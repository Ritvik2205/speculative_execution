.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
test sil, al
and bl, bl
test cl, 101
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor ax, -5889
xor bl, dil
or sil, -49
bt si, dx
or bl, cl
xor rcx, 71
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
