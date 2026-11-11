.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovp edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
test cx, ax
xor al, cl
sub dx, 34
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
