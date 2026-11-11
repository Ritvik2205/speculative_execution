.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ax, -10161
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg dl, dl
cmp dl, -93
inc eax
mov bl, bl
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
neg ebx
add ax, 23614
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
