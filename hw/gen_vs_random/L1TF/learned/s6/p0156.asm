.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or al, -48
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
or rbx, 18
cmovb cx, dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
