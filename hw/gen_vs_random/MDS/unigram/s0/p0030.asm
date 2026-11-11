.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, bx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and al, -82 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
test bl, -114
bt edx, 97
btr rbx, rcx
not al
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 73
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
or sil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and ax, -12519
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
test edi, -1252846009
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
