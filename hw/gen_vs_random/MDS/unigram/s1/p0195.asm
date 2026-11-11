.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73 # instrumentation
cmovns rax, rsi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
cmovnbe ax, bx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
bt rsi, rcx
and dl, 60 # instrumentation
cmovno eax, eax
bt ecx, 70
bts dx, 167
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 32
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 33
or cl, 100
xor sil, 40
cmovnl eax, edi
or rax, rcx
cmovb bx, dx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
xor bl, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
