.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb sil, -78
adc dil, 5
cmp edx, 44
sub rdi, 40
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 47
sub dil, al
lea dx, qword ptr [rax + rcx + 78]
adc dil, 39
cmovs rax, rax
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
