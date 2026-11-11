.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and dil, -62
or dil, dil
test rdx, 4
xor rbx, 89
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dl, -19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
test rax, -708244380
bt cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
