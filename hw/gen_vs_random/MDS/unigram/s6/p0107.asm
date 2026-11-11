.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 89
and rdi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
xor ebx, edi
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
xor al, 99
test cx, 401
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and dl, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
or dil, bl
bt edi, 225
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
bts rsi, rbx
and cl, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
