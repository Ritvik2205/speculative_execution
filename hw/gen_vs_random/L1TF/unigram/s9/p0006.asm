.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
lea ax, qword ptr [rbx + rdx + 47]
bts rdx, rdx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
lea rdi, qword ptr [rbx + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
add cl, al
add bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
