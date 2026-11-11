.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub rax, -701741274
movsx ecx, ax
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
sub ebx, eax
not si
cmovo rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
sub al, 99
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and al, -127
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
imul bl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sbb dl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmovs cx, cx
add al, 118
bts ecx, edi
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
