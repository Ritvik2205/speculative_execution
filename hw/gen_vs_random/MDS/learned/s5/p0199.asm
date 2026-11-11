.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test al, -81
or dl, dl
test al, bl
test rdi, 85
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or sil, -49
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or dil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or rax, 1020005579
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
