.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
sbb bx, si
setns al
or dl, 41
lea ebx, qword ptr [rsi + rsi + 12]
add bl, 78 # instrumentation
adc cx, 72
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
add dl, -77 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
movsx rbx, ax
add dl, 52 # instrumentation
sets sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
