.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor dl, 34
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and al, al
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
xor sil, 94
and al, 84
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test al, dl
and rcx, -63
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
