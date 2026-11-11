.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
or ecx, 90
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
adc sil, dil
inc esi
cmp al, 56
xor al, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
