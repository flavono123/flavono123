<template>
  <div>
    <p>Hi! {{ wavingHand }} I love you</p>
    <UiButton class="ui-button-group">Me, too!</UiButton>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";
import { UiButton } from 'keen-ui';
import 'keen-ui/dist/keen-ui.css';

@Component({
  components: {
    UiButton
  }
})
export default class Hello extends Vue {
  data() {
    return {
      wavingHand: '👋'
    }
  }
}
</script>
