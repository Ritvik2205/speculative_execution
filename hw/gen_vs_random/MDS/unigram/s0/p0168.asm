.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 44
and dil, cl
cmovnl edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
cmovb cx, cx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
cmovnz cx, dx
and al, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 8
cmovz ax, dx
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
cmovnb rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 40
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
or si, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
