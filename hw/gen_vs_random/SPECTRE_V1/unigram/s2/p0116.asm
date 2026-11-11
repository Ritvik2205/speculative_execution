.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, cl
cmovnl rcx, rdx
xor rcx, 85
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
lea cx, qword ptr [rcx + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 33
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
setnl sil
lea rsi, qword ptr [rdx + rcx]
cmovl esi, eax
add al, 28 # instrumentation
setnz al
dec cl
sub bl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
