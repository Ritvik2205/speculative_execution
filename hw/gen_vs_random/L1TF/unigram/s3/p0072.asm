.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or cl, dil
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
mov dil, 54
and rax, 1994547909
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
add cl, cl
jmp .bb_0.1
.bb_0.1:
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
cmovl rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 55
bt eax, 78
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
lea eax, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
