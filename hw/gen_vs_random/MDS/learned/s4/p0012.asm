.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 32
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor eax, -885380838
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test sil, 41
and si, -121
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
test eax, -409834435
not bl
or sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
