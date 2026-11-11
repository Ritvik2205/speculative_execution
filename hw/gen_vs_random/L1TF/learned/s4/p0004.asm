.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rdi + 45]
and bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
cmovno rbx, rcx
sub al, cl
jmp .bb_0.2
.bb_0.2:
sbb dl, sil
sbb rbx, -117
xor al, bl
sbb al, dl
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
