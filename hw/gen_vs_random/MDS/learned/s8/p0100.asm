.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or bl, -54
and al, al
and al, 49
and si, -121
or ax, 16560
and rcx, 107
xor cx, -18
xor bl, cl
xor dl, 8
or rax, -1523798580
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test dl, dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor cx, -18
jmp .bb_0.1
.bb_0.1:
bt si, ax
btr si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
