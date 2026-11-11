.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
lea rsi, qword ptr [rdx + rcx]
add cl, bl
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
setp sil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
adc dil, 95
add bl, dl
sub dl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
sbb al, al
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
