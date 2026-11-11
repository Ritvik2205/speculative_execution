.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
cmovns si, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub dil, -70
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea dx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and di, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, 32
cmovno di, ax
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add ax, 1313
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
sbb ebx, 9
cmovb edi, ecx
btc rdx, 152
not ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add al, bl
not si
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
