.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
add al, 80 # instrumentation
sbb al, al
sub dil, -39
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
lea ax, qword ptr [rdx + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
cmp edx, edx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
not dl
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
