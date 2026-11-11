.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
or al, 30
xor sil, -14
or dil, dl
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and al, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 74
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and sil, -69
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor cx, -18
and esi, 98
xor al, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
