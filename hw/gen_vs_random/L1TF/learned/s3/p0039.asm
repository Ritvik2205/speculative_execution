.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
lea rdx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test al, 15
jmp .bb_0.2
.bb_0.2:
or rax, 699028911
sub rax, 1806572419
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
