.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 47
add cl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
bt rcx, rcx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -53 # instrumentation
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
add bl, 13 # instrumentation
setns bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
