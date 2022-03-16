<template>
    <HeaderLayout></HeaderLayout>
    <slot />
</template>
<script>
import HeaderLayout from './HeaderLayout'
export default {
    name: "SimpleLayout",
    components:{
        HeaderLayout,
    }
}
</script>

<style>
    
</style>