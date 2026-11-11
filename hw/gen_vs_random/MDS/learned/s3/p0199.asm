.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and bx, 92
or dl, cl
or dl, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor ax, -5889
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or bl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, al
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
