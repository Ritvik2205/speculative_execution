.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, bl
add bl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
add cl, -56 # instrumentation
sbb rax, 32
lea edi, qword ptr [rbx + rsi + 39]
cmovb ebx, edx
lea si, qword ptr [rdi + rsi + 39]
add dl, -96 # instrumentation
cmovo eax, eax
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 9
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
add dl, dil
mov bl, dil
movsx esi, sil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
cmovl ebx, edx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
add dl, 117 # instrumentation
sbb rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
