.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
or ecx, 68
not rax
test rcx, rsi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and cl, 78 # instrumentation
cmovs bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
xor cl, 98
or cx, 39
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and bl, 20 # instrumentation
cmovo edi, esi
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
and bl, 33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
