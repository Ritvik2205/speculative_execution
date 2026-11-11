.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
lea rcx, qword ptr [rdx]
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add al, 64 # instrumentation
sbb al, bl
lea ax, qword ptr [rsi + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 82
mov ecx, -1856082135
bt rax, 55
xor dil, al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 13
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
