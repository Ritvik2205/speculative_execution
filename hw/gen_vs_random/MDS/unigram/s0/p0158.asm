.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
btc di, 164
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 54
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
or cx, 49
jmp .bb_0.1
.bb_0.1:
cmovo si, dx
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
xor si, 80
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
cmovnl ecx, edi
and al, 75
cmovnp bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
cmovnle rdi, rbx
and cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and bl, cl
bt rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
