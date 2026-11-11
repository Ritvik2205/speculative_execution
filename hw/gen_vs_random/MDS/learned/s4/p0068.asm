.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo si, bx
jmp .bb_0.1
.bb_0.1:
or di, 82
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and dl, dil
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or dl, 85
xor eax, 1640090871
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
