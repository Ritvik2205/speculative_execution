.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -99
test sil, 29
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
inc esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
lea di, qword ptr [rcx + rax + 33]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 74
movzx rbx, cl
lea esi, qword ptr [rcx + rcx]
cmovnle di, di
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
sub rcx, -121
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
