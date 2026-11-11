.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
lea rcx, qword ptr [rsi + rdi]
mov dl, cl
add dl, 47
cmp al, dl
inc dil
dec bl
sbb eax, 99727957
cmovnle rcx, rdx
adc sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
