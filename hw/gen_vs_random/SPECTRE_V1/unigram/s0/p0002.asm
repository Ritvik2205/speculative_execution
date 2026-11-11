.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ebx, edi
xor cl, 78
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 11
add dl, 13 # instrumentation
setns dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
imul rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
sub cl, bl
cmovnle ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
add bl, dl
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
