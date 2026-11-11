.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, dl
add rsi, 109
add al, 22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
imul edi, esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 98
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -77 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdi
lea cx, qword ptr [rcx + rdi]
cmp dil, bl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
