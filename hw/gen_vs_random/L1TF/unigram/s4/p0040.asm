.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc si
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
xor cl, al
cmovno di, di
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
sbb cx, 71
add bl, cl
cmovno bx, bx
add dl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
xor al, 14
cwd
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
