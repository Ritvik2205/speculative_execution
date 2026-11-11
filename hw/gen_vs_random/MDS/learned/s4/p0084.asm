.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and cx, -2
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
or bl, dil
btr bx, si
test eax, 1287331633
test al, 91
or eax, -696456144
or sil, dil
test dil, -51
test sil, dl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
test rcx, -613256812
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
