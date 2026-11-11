.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
xor bx, 70
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
lea edi, qword ptr [rbx + rcx]
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
test bx, 33
btr edi, 1
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xchg dx, di
imul sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
test cx, dx
nop
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
lea rsi, qword ptr [rcx + rbx]
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
