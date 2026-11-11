.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
xor al, dl
and eax, -829294476
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
bt ax, bx
and dl, sil
or rcx, 54
or al, al
test dil, -51
xor al, 55
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or bl, dil
or al, -17
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
or al, 24
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
