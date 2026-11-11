.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
btr si, 32
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
or rcx, rdx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 31
and dil, -2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 27
cmovp dx, cx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and cl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
xor dl, cl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
