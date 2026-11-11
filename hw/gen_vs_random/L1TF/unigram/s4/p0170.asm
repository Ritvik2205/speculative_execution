.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
mov dl, 64
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
bts ecx, 23
setp dl
add bl, -15 # instrumentation
cmovl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
jmp .bb_0.1
.bb_0.1:
dec dil
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
cmovno dx, dx
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 62
lea cx, qword ptr [rdi + rbx + 2]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
