.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, cl
add al, 10
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
setb al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
add dil, -75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
cmovnle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
bt ebx, 45
setno bl
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
