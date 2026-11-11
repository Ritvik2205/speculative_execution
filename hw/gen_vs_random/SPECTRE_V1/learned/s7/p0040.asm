.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sbb al, -107
sub rbx, -11
adc al, -92
or sil, bl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 99
lea ebx, qword ptr [rcx]
or rax, -1571963467
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
