.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, cl
setb al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
add al, 3
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
cmovnle rbx, rdx
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
setno bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
