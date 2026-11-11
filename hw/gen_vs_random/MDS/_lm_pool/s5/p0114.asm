.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 98
or dil, 16
and rax, -1701787862
or dl, -21
xor dl, -59
xor bl, cl
and eax, -574348013
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test bl, -9
and dl, -73
or al, 54
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
test eax, 1287331633
or al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
