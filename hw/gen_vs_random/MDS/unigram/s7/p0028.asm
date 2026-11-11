.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], cx
xor si, 91
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
btr ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
cmovbe di, ax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 75
cmovnz ax, dx
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
not cl
btc rdi, 221
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
