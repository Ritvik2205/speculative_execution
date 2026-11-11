.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
movzx eax, si
sub dx, -23
or cl, al
bts di, 230
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb eax, 100
lea dx, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
mov bl, al
jo .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, al
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add rax, -704585563
jmp .bb_0.2
.bb_0.2:
add al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
add bl, -95
xor al, -119
sbb bl, al
cmovno dx, di
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
movsx di, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
