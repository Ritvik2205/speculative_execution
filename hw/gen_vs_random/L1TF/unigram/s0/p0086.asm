.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, rsi
setp bl
cmovnle rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
or esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
cbw
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
setnz al
cmovnz rdi, rdx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
