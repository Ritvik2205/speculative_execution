.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
test rdi, rbx
imul al
and cl, dil
bt ax, 205
jmp .bb_0.1
.bb_0.1:
xchg rsi, rsi
xor al, dl
cmp sil, -11
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and dl, 32 # instrumentation
cmovnbe edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
