.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
add sil, 32 # instrumentation
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 45
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
adc cl, sil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
add dil, 73 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
xor rax, 1636804787
add bl, 54
lea ecx, qword ptr [rsi + rax]
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
