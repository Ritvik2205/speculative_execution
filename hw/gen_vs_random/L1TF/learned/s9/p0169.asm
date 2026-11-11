.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
or cl, 105
add al, -80
jmp .bb_0.1
.bb_0.1:
or dl, sil
cmp al, 56
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
xor bl, sil
cmovz rcx, rax
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
