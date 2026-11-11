.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 58
test al, -32
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
lea ebx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 63
lea rbx, qword ptr [rdi + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 65
lea rdx, qword ptr [rbx + rsi + 61]
sub al, 9
jmp .bb_0.3
.bb_0.3:
xor sil, al
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
