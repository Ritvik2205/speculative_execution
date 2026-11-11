.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
lea rcx, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 93
add al, 64 # instrumentation
cmovnl rax, rbx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 51
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add cl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
adc rbx, 75
sbb al, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
lea cx, qword ptr [rbx + rdx]
bt rsi, rdi
add dil, 40 # instrumentation
cmovp rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
