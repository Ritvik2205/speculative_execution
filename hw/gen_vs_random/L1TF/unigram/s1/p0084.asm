.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 32
lea bx, qword ptr [rdx + rdx + 41]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
btc di, ax
or rbx, rax
add cl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 48
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 27
sbb al, bl
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], si
sbb rsi, 80
mov rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
