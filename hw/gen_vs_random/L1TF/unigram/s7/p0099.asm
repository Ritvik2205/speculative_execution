.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dil
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
btr bx, ax
add sil, -61
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 69
and dil, -22
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cl, -20
cmovb bx, ax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
adc sil, bl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
