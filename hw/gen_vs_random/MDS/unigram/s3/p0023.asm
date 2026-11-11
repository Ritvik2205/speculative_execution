.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
xor cl, al
test al, al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 38
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and cl, -76 # instrumentation
cmovl bx, dx
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
xor rcx, 71
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
xor eax, -127
btc eax, 40
test dl, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
btc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
