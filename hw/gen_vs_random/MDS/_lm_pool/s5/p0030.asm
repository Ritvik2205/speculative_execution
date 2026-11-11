.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
xor al, -19
xor dl, -43
xor dl, -59
xor cl, 83
and cl, dl
and al, 75
and cl, 79
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
lea rsi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or al, -22
bt bx, di
or cx, 39
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
