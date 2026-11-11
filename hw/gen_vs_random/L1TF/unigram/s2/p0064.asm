.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 66
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
cbw
lea ax, qword ptr [rbx + rbx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
add bl, 68
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
add bl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
setnl al
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 28
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
imul dx, di, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
