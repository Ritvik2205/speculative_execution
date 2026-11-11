.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
jmp .bb_0.1
.bb_0.1:
xor al, -127
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
setnbe bl
and sil, -26 # instrumentation
cmovnp rdi, rsi
movzx rax, dl
sbb al, 96
lea ecx, qword ptr [rdx + rax]
setle al
jmp .bb_0.2
.bb_0.2:
add al, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
