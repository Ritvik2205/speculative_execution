.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
cmovnb si, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rsi, rsi
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnz di, si
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovbe ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
bts eax, 222
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and dl, 60 # instrumentation
cmovnl eax, ecx
xor al, 9
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
xor al, 55
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
