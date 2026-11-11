.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
lea rdx, qword ptr [rdx]
or dil, dil
or dl, bl
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 53
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
cwd
cwde
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
cmovnp rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
