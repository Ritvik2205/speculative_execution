.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax + rsi + 1]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
not eax
cmp rax, -1365488374
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
mov dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rdx, rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 58
add dl, -125 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 41
xor ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
add al, 72 # instrumentation
cmovns cx, dx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
