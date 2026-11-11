.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -28 # instrumentation
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
cmovnbe ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
cmovnz rbx, rcx
and rcx, 107
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and bl, bl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and cl, 123 # instrumentation
cmovo dx, di
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
or ax, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rcx, 107
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 64
and bl, -53 # instrumentation
cmovbe edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
or bl, -125
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
