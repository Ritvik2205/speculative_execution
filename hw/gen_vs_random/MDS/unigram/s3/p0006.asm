.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
test cl, al
and ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and ax, 30884
cmovl rdi, rdx
btc di, ax
test edi, 63
jmp .bb_0.1
.bb_0.1:
bt di, 9
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and dil, -115 # instrumentation
cmovl cx, di
cmovs rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
or dil, -57
and bl, 69
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
cmovz edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
