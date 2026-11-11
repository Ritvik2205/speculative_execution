.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
bswap rax
xor bl, bl
adc cl, -34
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
btc ebx, ecx
and rcx, 35
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
add dl, -124 # instrumentation
setnz dl
test bl, dl
bts rbx, rdx
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
