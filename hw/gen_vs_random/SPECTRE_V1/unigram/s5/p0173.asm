.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edx
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
test cl, -62
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
setno bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, bl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
adc eax, 34
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
movsx cx, al
neg bx
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
