.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 89
imul si, bx, 58
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
or dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
mov di, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
xor cl, al
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
