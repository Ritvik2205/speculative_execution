.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or dil, dil
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and bl, 68
xor dil, al
xor si, 91
and dl, dl
test eax, 343548072
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test cl, 73
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 40
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
test rdi, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
