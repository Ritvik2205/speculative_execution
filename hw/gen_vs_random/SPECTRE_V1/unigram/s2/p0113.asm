.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi + rax + 12]
lea rdx, qword ptr [rcx]
add eax, -2019837038
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 92
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmovle rsi, rbx
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 98
add cl, -26 # instrumentation
cmovnp dx, bx
or cx, 0b1000000000000000 # instrumentation
bsr si, cx
xor al, 86
imul dil
or sil, al
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add al, -42 # instrumentation
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
