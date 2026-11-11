.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 69
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
xchg rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 92
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
xor eax, 1034314125
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 110
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 96
mov cl, -98
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
lea rsi, qword ptr [rdi + rdx]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
