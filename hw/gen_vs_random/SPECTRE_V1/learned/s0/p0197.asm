.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
or bl, cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
setnl cl
mov dl, 53
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or dl, 60
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 60
lea edx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
