.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor sil, 94
test eax, 1729060510
xor ax, 31969
or bl, al
or al, al
xor ax, -5889
test sil, -96
xor cl, bl
or dil, dil
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
