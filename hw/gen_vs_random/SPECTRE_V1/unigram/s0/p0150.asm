.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
dec bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
cmp dl, cl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 84
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
mov rsi, rdi
or dl, al
lea ebx, qword ptr [rdi + rcx]
imul rsi, rdx, 34
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
dec al
add al, bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
