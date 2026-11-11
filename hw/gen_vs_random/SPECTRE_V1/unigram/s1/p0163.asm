.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 65
btc dx, 69
setns dil
add di, 41
add bl, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
add cl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 8
bt edx, 71
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
xor dil, 77
add sil, 32 # instrumentation
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xchg bx, cx
sets sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
