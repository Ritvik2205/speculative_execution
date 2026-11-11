.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
xor si, ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
add al, -67 # instrumentation
setz bl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and ax, bx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edx
test edx, 22
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 91
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
add al, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
