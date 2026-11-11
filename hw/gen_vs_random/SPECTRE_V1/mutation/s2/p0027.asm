.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rax]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
cmp eax, ebx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
