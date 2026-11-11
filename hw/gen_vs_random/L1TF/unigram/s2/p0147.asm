.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
btc edx, ecx
cwde
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
sub sil, dil
xor rbx, 57
and eax, -409673666
lea rcx, qword ptr [rdi + rcx + 82]
lea rsi, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
imul ecx, esi
setb dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 49
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 61
setnle sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
