.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
add cl, 11 # instrumentation
cmovns edi, esi
add al, cl
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
bt rcx, rax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
adc dx, dx
sbb rsi, 53
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
