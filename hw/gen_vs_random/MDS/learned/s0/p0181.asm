.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
bt dx, 162
test dil, 46
or rax, 302048971
jmp .bb_0.1
.bb_0.1:
xor al, 55
test al, 66
xor dl, -19
or al, -22
or ax, 30524
jmp .bb_0.2
.bb_0.2:
btc bx, 58
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
