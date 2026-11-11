.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, cx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
not esi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 51
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
cmovnl edx, ecx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 84
or rdi, 67
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and al, dl
test dl, 25
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 46
bt rbx, rcx
and rdx, 54
and rsi, 70
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
