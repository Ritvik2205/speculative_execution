.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
cmovo eax, ebx
or rax, -141551502
or al, 25
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor dil, -124
xor dx, 91
cmovo rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 45
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and dl, -59 # instrumentation
cmovbe bx, ax
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and dl, 120 # instrumentation
cmovnz ecx, eax
bts eax, 222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
