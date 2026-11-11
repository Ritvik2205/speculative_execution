.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rcx
cmovns dx, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
or edi, -88
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
cmovnz ax, dx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovnle rdx, rsi
cmovnle rdx, rcx
or ax, -4210
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
cmovnl edx, ebx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
or dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
