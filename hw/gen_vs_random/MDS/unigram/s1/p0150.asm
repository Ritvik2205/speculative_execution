.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
btr bx, di
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 19
test sil, dl
btr rax, 209
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and al, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
test dil, -80
test dl, 27
test rcx, -613256812
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
or dl, al
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and cl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
bt di, ax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
