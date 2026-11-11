.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
bt bx, 57
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 75
bts rbx, 51
add dl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, al
imul ax, dx, 53
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 81
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 32
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
cmp eax, 692647572
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
