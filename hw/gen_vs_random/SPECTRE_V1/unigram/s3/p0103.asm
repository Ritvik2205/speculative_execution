.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 84
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 84
lea di, qword ptr [rdx + rsi + 31]
cmovnb rdx, rbx
imul cl
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
inc eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sub di, 3
add sil, -89 # instrumentation
sbb esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
