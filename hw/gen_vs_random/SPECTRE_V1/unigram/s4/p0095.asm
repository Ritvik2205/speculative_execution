.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, sil
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 34
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
test sil, -31
adc dil, 46
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
sub rax, rcx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
add sil, al
cmovo dx, di
setns dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
