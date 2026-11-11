.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
mov al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
imul al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cdq
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
adc ecx, 75
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
