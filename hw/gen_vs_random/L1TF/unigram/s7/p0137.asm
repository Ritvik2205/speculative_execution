.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
add dl, -10 # instrumentation
cmovns eax, esi
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
cdq
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
btr dx, 64
mov ecx, -1856082135
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
nop
sub rax, 1806572419
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movzx rbx, cl
and bx, 52
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
