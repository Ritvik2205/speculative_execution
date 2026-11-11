.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
imul si, bx
lea rax, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, -68
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
cmovb rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
dec si
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
