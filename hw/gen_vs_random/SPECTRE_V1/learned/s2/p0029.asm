.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
or dl, bl
sub al, bl
cmp al, 13
add dl, 47
sbb eax, 99727957
lea rdx, qword ptr [rcx + rsi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
test rdi, -1846965753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
