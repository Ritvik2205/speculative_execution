.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -2072052278
add dl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovz rcx, rbx
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
or al, -5
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cbw
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
dec edi
add bl, -77 # instrumentation
cmovns dx, ax
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
