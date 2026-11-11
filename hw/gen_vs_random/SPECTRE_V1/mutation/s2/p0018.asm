.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add eax, -55403434
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
bt edi, 134
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor eax, 55
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 19 # instrumentation
setnz bl
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
