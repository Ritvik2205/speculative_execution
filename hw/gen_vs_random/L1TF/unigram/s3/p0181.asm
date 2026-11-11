.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dl
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 76
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
cmp bx, 80
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
add rbx, rsi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
dec dil
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
