.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 13 # instrumentation
setns bl
cmovno rbx, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
xor bl, -38
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
lea edi, qword ptr [rdi + rbx + 48359]
cmovns rdx, rbx
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
mul dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
cmovb dx, di
or ax, -114
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
jmp .bb_0.2
.bb_0.2:
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
cmovnle rbx, rdx
setno bl
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
add dil, -75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
