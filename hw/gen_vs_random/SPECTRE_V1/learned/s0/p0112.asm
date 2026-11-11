.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rcx
xor bl, bl
neg sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
and al, -54
mov dl, cl
or ax, -114
lea bx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
