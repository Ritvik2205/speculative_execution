.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, ax
not al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
add dl, 22
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
lea rdx, qword ptr [rcx + rbx + 34]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
xchg cl, bl
sub bl, 15
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
