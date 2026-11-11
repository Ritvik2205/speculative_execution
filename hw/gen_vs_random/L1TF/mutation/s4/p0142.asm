.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor rax, -2072052278
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
cmovz rcx, rbx
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
inc rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
seto sil
cmovl rbx, rbx
adc dl, -12
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add al, 117
and sil, 93
cmovnb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
