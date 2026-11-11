.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 42 # instrumentation
cmovz ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
or al, sil
btr cx, cx
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test cl, 54
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
test dl, bl
jmp .bb_0.1
.bb_0.1:
xor al, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
bt eax, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
test al, dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
test cl, dl
bts rdx, 200
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
