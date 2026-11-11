.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, bx
and edi, 23
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
or al, sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and dil, -39
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or rax, 52
or al, -24
xor bl, 67
xor dl, 40
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
