.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
cmp bl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 46
test sil, 47
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
cmovle bx, ax
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
or si, 0b1000000000000000 # instrumentation
bsf di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
