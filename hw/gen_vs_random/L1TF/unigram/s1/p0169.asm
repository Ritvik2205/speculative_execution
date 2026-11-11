.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rax]
cmovnbe rdi, rbx
cmovl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
cmovno dx, bx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
mov dl, -36
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 5
or cx, 54
sub ebx, 28
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
