.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
btc ebx, 149
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
bt edi, edx
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
or edi, -88
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
cmovns ecx, ebx
and dl, dil
test dil, dil
xor bl, -102
or ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
bts di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
