.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp sil, 25
or dil, al
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg edx, ebx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 45
sbb cl, al
add al, bl
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
