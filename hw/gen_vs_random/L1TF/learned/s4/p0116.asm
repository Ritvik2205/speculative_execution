.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
test dil, 79
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
inc sil
xor eax, -117
xchg dx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
setnz dil
or ebx, ecx
lea si, qword ptr [rbx]
lea esi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
