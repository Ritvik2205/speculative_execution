.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
xchg rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
adc dl, 48
lea di, qword ptr [rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
sub cx, 91
and dl, sil
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
