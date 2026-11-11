.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, -21
xchg ax, dx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
adc dil, 120
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
sbb sil, cl
lea ax, qword ptr [rdi]
and esi, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
add cl, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 91
lea rsi, qword ptr [rax]
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
