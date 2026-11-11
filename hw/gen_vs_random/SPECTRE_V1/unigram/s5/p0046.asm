.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, di
cdq
or cl, al
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
test rdx, 1657596343
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rbx]
sub dl, bl
add dl, -97 # instrumentation
sets dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
setno al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
