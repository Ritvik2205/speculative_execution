.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and cl, 125 # instrumentation
cmovo dx, cx
and dl, 1 # instrumentation
cmovl ax, bx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
and dl, -59 # instrumentation
cmovbe di, ax
test al, -7
xor dl, cl
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
btr di, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
bt rax, rcx
btc edi, 230
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
test dx, 16353
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
