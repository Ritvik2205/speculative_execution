.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 76
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
not al
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
lea rax, qword ptr [rsi + rbx + 35]
or al, -2
sub rax, 1806572419
test bl, 45
and rax, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
