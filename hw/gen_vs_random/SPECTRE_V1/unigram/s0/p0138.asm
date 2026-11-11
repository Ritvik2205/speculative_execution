.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
sbb di, dx
bswap edi
add bl, 97 # instrumentation
cmovnb bx, ax
lea eax, qword ptr [rbx + rax + 99]
lea rax, qword ptr [rdx + rcx]
cmp bl, -114
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 55
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
btr ecx, 9
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
add al, 10
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
