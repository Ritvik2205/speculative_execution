.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
add al, -72
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
setb al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
sub al, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
cmovnle rbx, rdx
setno bl
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
add dil, -75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
adc ax, -27488
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
setnp al
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
xor al, -42
sub dl, dl
movzx ebx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
