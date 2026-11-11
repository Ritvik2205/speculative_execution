.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 63
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
test dil, -72
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
btr rbx, 96
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
bt di, dx
or al, -8
xor ecx, 17
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
bts cx, ax
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
or di, -18
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 52
xor dl, sil
or edi, 54
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
xor bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
