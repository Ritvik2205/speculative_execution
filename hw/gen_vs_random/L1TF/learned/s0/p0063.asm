.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sbb dl, cl
inc dl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sbb dl, sil
test eax, 645518295
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xchg ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
