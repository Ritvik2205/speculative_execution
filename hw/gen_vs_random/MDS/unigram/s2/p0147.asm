.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 75
or cx, 10
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 98
cmovs eax, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
cmovz cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or bl, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
cmovs ax, si
btc ax, bx
cmovz ax, cx
xor rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
