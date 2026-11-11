.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 57
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 98
not dl
lea ecx, qword ptr [rdx + rdx + 56339]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rdi, rcx
sub dil, dl
lea di, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
lea si, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
test dl, -7
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
add dil, 103 # instrumentation
cmovno eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
