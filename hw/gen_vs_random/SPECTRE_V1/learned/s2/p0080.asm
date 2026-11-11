.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
mov al, dil
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dil
and al, bl
lea rcx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
cmp bl, -114
setb cl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
