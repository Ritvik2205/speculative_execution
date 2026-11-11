.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
cmovnbe edi, ebx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
add al, 117
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
sub dl, 105
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
cmp ax, -14781
add al, -37 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
btr eax, edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 42
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
