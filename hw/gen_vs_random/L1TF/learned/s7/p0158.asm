.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, ebx
xor rsi, 34
sub sil, -99
xchg edi, ecx
and dil, dl
sbb bl, sil
test dl, 84
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rcx]
test bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
