.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
xor al, 78
add al, -109
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
lea rsi, qword ptr [rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 11
add al, -65
and dl, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
