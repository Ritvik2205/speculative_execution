.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
cmovp rsi, rdx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
or al, -48
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 1 # instrumentation
add bl, -9 # instrumentation
cmovs ax, di
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
cmovnl rdi, rbx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
add dl, -108 # instrumentation
cmovnle edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
