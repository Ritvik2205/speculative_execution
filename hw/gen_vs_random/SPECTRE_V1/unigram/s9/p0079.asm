.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, cl
and rax, -1128038253
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
cbw
lea rcx, qword ptr [rsi + rax + 76]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
add cl, -51 # instrumentation
cmovl ecx, ebx
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
bt ecx, eax
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bts rcx, 29
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 63
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
