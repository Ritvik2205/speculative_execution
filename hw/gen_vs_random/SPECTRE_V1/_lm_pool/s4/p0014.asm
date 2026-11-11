.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
sbb edi, 92
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sbb ecx, 2
inc eax
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
