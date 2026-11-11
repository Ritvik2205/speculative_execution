.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
not rcx
btc rdx, rdi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
or rdi, -11
and ax, ax
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovb di, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 7
xor cx, bx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 84
and al, 39 # instrumentation
cmovbe dx, si
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 8
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
