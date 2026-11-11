.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 85
test cl, sil
cmovnb di, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor di, bx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
or rbx, -124
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
bts ebx, edx
or rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
or ax, -4635
and cl, 102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
