.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
cmovbe dx, ax
cmp dl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 20
cmp rbx, 9
imul ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
