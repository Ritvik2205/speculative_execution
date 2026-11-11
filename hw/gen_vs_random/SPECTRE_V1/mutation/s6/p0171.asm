.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
add bl, 13 # instrumentation
setns bl
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
xor bl, -38
cmovno rbx, rbx
lea edi, qword ptr [rdi + rbx + 48359]
cmovns rdx, rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
or ax, 19104
cmovb dx, di
mul dl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
