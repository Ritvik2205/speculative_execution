.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
cmovl bx, bx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
adc ebx, 57
xchg dx, si
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
