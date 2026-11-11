.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dl, cl
xor rbx, rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
add bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
adc bl, 88
xor rax, 376589024
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 95 # instrumentation
cmovnb rbx, rax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 36
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
sub bl, -19
xchg bx, di
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
