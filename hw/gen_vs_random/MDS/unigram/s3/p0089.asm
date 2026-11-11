.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rsi
cmovns eax, edi
btc rdx, rax
or cl, 100
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and dl, -73 # instrumentation
cmovns rbx, rax
xor bl, bl
or rcx, 96
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
or ax, -17790
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and bl, dil
and cl, 95 # instrumentation
cmovns rbx, rbx
cmovnle rdx, rax
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
