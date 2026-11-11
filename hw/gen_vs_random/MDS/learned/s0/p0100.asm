.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and dil, cl
xor cl, 98
and ax, 19740
test dil, 46
or dl, -89
test cl, -123
and al, 82
and dl, al
test al, sil
xor bx, 46
and dx, 60
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
