.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
or rsi, 27
xor rdi, -80
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
add cl, 44 # instrumentation
cmovns ax, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
add al, -84 # instrumentation
setno dl
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
sbb rdx, 98
or dil, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
