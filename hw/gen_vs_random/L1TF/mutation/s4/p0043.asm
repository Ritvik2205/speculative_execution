.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
inc dl
seto sil
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
lea eax, qword ptr [rdi + rbx + 62931]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
sbb sil, -19
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
jmp .bb_0.2
.bb_0.2:
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rdi + 12048]
cmovnbe eax, edi
test al, -56
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
xor ax, -16232
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
imul ax
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
cmovp ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
