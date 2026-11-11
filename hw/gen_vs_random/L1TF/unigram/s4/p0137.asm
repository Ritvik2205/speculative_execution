.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dx
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
add cl, cl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
xor al, sil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
movsx dx, dil
lea di, qword ptr [rbx]
not cx
sbb cx, 51
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 34
and ecx, -38
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
