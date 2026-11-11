.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
sbb al, 61
add bl, cl
xor esi, 88
and cx, 127
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 93
cmp ecx, 97
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 16
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
