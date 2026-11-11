.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xor dl, sil
add al, dil
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
inc edx
and al, -68
jmp .bb_0.1
.bb_0.1:
setb al
imul bx, dx, 8
setbe sil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
