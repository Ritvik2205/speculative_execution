.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc si
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and dil, sil
test al, -5
test rax, 1469613902
lea ebx, qword ptr [rcx + rax]
lea ebx, qword ptr [rax + rdx + 43]
dec ax
jmp .bb_0.1
.bb_0.1:
mov cl, al
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
btr rsi, 3
and rsi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
btr edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
