.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
lea rcx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
lea ebx, qword ptr [rax + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
inc esi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
