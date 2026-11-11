.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
sbb rbx, 59
and rdx, 100
adc cl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 76
test rbx, 49
mov rdi, -5671708760962025403
and di, bx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 80
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
setle dl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
mul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
