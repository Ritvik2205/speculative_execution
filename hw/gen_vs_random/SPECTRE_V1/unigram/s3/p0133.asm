.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 41
adc esi, -39
adc ebx, 21
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
add bl, 78 # instrumentation
adc si, -91
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
imul eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
