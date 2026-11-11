.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or edx, eax
cmovnl edx, edi
bts rbx, rdi
or rcx, 54
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and bl, 3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
cmovs rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bts rdx, 200
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
not rdi
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
