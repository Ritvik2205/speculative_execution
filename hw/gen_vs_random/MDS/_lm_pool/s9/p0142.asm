.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test al, 22
and bl, bl
or cl, 119
xor bl, -88
test cl, -18
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor bl, cl
or al, 54
btc ax, cx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
