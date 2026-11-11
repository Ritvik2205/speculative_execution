.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
cmovns rdx, rbx
xor bl, -38
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
add bl, 13 # instrumentation
setns bl
cmovno rbx, rbx
lea edi, qword ptr [rdi + rbx + 48359]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or ax, -114
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
cmovb dx, di
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
mul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
