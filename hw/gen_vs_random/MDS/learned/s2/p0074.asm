.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 37
sub rsi, 15
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 47
cmovnbe cx, bx
btc rbx, rcx
bt dx, di
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
cmovl rax, rdi
not ebx
imul ecx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 71
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rcx + rcx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and sil, dil
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
xor al, -119
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and esi, 91
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
cmovz rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
