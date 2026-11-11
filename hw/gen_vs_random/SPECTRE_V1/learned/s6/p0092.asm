.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor ebx, 51
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
xchg rsi, rax
lea ax, qword ptr [rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 52
cmp cl, sil
setb sil
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
