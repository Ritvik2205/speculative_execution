.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
lea rax, qword ptr [rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp si, -11
test al, -126
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
cmp dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
