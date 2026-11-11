.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -6793
or al, -17
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor dil, sil
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and al, 49
btr bx, ax
bts rax, 77
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and ax, 19740
test cl, -123
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
