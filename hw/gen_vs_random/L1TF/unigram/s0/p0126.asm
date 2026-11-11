.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
bt ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
add al, -67 # instrumentation
setz bl
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
movsx cx, dil
xor al, -127
sbb ax, 67
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 92
add bl, 84 # instrumentation
btc bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
