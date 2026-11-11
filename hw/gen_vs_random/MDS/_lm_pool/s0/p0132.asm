.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
bts rsi, rdi
and al, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
test bl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and dil, 125
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
bts rdi, 130
and cl, dil
jmp .bb_0.3
.bb_0.3:
test al, -7
btr si, ax
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
