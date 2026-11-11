.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
test dl, bl
xor al, cl
xor sil, 27
and bl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
test eax, 343548072
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or al, sil
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
