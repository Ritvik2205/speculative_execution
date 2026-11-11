.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
add al, 65 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, rcx
setp al
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rax]
add bl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
