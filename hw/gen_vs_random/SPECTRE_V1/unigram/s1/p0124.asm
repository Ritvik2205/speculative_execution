.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, cx
lea di, qword ptr [rdx + rax + 52]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 62
lea ebx, qword ptr [rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 28
lea bx, qword ptr [rax]
btr rax, rbx
lea rbx, qword ptr [rdi + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
cmovo dx, si
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
