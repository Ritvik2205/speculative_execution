.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 66
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax]
xor al, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
dec bl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test ax, 13284
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
