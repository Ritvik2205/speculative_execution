.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, bx
and al, -8
or al, 54
test al, -7
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
btc ax, cx
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and ecx, -104
xor rax, -1657511731
and al, 49
or al, 24
test di, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
