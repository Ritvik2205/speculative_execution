.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
sub sil, -99
or al, bl
cmovb bx, di
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
lea rax, qword ptr [rcx + rsi + 95]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
or bl, -88
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
