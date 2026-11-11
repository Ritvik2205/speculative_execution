.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rbx
cmovns rdx, rbx
add bl, 13 # instrumentation
setns bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
xor bl, -38
lea edi, qword ptr [rdi + rbx + 48359]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb dx, di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
mul dl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
or ax, 19104
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
