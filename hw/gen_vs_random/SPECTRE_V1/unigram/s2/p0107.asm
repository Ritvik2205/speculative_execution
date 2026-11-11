.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
setnp sil
setno al
xor eax, -764881786
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 72
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add al, 56 # instrumentation
cmovns edx, eax
adc cl, dil
sbb cx, 84
add al, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 26
movsx ebx, bl
and dl, al
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
