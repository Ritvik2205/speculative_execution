.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
add bl, -77 # instrumentation
cmovns bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 98
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
mov dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
xor bl, -5
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
lea ax, qword ptr [rcx + rdx + 14]
btc rdx, 152
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
