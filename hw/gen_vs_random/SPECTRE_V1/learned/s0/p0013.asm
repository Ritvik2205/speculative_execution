.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, cl
test al, 84
cmp cl, al
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, bl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
sbb dl, 127
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
