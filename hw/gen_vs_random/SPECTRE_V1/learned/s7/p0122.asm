.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sbb dl, sil
sbb al, dl
xchg ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
or edi, 98
add dl, bl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
