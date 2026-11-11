.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
btr si, 208
and cl, -111
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rsi, 18
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
or eax, -696456144
jmp .bb_0.1
.bb_0.1:
test cx, dx
test al, 91
cmovo ecx, eax
or bl, 100
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
btr ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
cmovns rdi, rbx
or ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
