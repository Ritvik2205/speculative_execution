.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rbx + rdi + 62]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
cmp rax, -1877933118
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
mov dil, dl
cmovle rdx, rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 1
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -125 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 33
xor ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add al, 72 # instrumentation
cmovns cx, dx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
