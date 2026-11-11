.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ebx
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 79
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
not al
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and al, 76
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
add dl, 43 # instrumentation
lea rax, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
cmovnbe bx, ax
add cl, 102 # instrumentation
sbb dx, di
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
