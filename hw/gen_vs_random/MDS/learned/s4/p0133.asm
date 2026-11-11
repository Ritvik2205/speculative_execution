.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -6
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dil, cl
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor al, 8
bt bx, ax
and si, -121
bt si, bx
test rbx, 86
or rsi, 68
test cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
