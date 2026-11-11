.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 65
btr ecx, esi
or al, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor dil, -5
and dil, al
jmp .bb_0.1
.bb_0.1:
test dl, -85
btc di, si
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test rax, 337705873
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
test edi, -1252846009
xor cl, dl
xor rdx, -59
or cl, dil
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
