.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
cbw
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
lea rsi, qword ptr [rbx + rax]
jmp .bb_0.1
.bb_0.1:
bts si, si
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
