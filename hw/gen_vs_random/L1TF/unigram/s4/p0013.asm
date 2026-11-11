.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
xor dl, -91
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc sil, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
imul ax, bx
btc ax, dx
lea eax, qword ptr [rax]
sbb rbx, 47
lea dx, qword ptr [rsi + rdx]
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
