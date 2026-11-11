.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
setp dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
adc sil, 6
mul rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
adc cl, cl
lea rbx, qword ptr [rdi + rax + 65]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and edi, 8
add rdx, 79
lea edi, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
