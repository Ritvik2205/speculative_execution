.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
cmovs dx, cx
test dil, -107
cmovnle edx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnl dl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 15
test dil, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
