.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
and di, bx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sbb eax, -1165635662
jmp .bb_0.2
.bb_0.2:
sbb al, sil
jmp .bb_0.3
.bb_0.3:
cmp di, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
