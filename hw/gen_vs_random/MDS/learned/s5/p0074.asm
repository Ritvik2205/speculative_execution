.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
test cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and sil, -69
or dl, sil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
cmovnp rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
bts ecx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
