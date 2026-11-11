.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 73
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
or bx, 87
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor cl, 15
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
cmovl rdx, rdx
and cl, 11 # instrumentation
cmovp ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
test sil, 17
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
xor rax, -345061362
or al, -22
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 31
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 96
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
