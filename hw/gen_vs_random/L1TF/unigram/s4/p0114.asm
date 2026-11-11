.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
test ax, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
cmovnl rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
mov cx, 63
setnl cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovns rsi, rsi
cmp dl, -56
bt eax, edx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
