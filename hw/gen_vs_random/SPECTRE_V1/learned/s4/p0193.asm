.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
cmovno di, cx
mov dil, cl
and rdi, 32
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -54
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
