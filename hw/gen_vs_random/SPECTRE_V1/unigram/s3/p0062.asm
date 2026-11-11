.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
bt ecx, 204
sbb edi, 30
add ecx, 80
setns bl
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
cmp bx, 16
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -126
cmovno si, dx
add bl, 70
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add dl, bl
bts rdx, 212
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
