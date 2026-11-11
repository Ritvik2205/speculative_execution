.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 848176907
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx eax, bl
sbb al, dl
xor al, -42
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
