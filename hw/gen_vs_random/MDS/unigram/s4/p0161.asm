.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 13
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 27
bt eax, ecx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovnp di, ax
cmovl rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and cx, -2
or al, al
xor al, 9
and bl, 121 # instrumentation
bt rbx, 33
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 1
cmovnle di, cx
and dil, dil
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
