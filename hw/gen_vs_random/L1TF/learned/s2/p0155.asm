.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
add dl, cl
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
setnl sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
btr dx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
add cl, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
cmp ax, -79
or rax, -263404965
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
