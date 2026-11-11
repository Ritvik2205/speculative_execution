.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, cl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 14
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
imul al
cmovnl rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 96
sub bl, 15
cmovl ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 54
add dx, 41
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
