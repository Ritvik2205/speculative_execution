.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor rax, -773894210
not dl
test sil, cl
test bl, -9
and ax, 19224
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 16
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
or rax, 302048971
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test bl, -14
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
