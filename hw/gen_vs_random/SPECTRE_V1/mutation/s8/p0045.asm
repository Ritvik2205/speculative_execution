.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
sub al, cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
setb al
add al, -109
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
add dil, -75
cmovnle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
bt ebx, 45
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
