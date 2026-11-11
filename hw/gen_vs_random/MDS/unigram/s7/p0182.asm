.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rsi, rsi
or rsi, 83
test ax, 6779
or al, al
test cl, 54
xor rcx, -2
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
xor dx, ax
or bl, -52
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
xor si, 80
or cl, -36
xor bl, -27
xor rdx, -59
and dil, 125
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
