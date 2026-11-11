.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, dl
sbb eax, esi
test rbx, rax
or sil, -44
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 55
inc rcx
add sil, 12 # instrumentation
cmovnb ebx, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
sub edx, -33
sub sil, -99
add bl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
