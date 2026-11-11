.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, -12
lea rsi, qword ptr [rdx + rcx]
cmp ebx, 2
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 37
sub sil, -99
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
cdq
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
cmovo rdx, rdx
cmovl rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
