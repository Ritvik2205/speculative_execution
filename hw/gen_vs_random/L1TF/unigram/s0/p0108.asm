.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 20
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
lea dx, qword ptr [rdi + rdx + 84]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 96
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
lea rcx, qword ptr [rbx]
and edi, 65
lea rcx, qword ptr [rbx]
cmovnbe rdx, rcx
cmovle edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
