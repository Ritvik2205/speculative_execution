.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
setb al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
sub al, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle rbx, rdx
setno bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
add dil, 72
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
