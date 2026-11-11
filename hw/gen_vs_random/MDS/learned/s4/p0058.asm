.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
or rax, 302048971
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or al, -17
test bl, sil
or al, 25
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and cl, cl
test rdx, 92
xor ax, -6793
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
