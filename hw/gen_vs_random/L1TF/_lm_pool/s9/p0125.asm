.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub sil, -99
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
cmp al, cl
lea dx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
btc bx, dx
jmp .bb_0.2
.bb_0.2:
cmp si, 21
jmp .bb_0.3
.bb_0.3:
add cl, -36
cmp dl, sil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
