.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
test ecx, -1843375753
and cl, al
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and edi, 23
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
test dil, 46
test al, 127
and bl, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
