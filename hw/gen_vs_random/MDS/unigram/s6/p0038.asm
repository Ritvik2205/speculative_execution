.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 22
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
cmovnp rcx, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or rdx, -109
or dl, dil
test rsi, 62
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
test dl, al
and bl, 33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
xor rbx, 89
btc di, di
xor cl, 98
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
bts di, 37
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
