.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
xor ax, 25554
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 94
xor ax, cx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 60
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 12
cmovnb di, bx
sbb ax, -19255
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, eax, 17
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
sbb cl, bl
bts dx, di
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not rdi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
sub dil, -10
cmovnle eax, edi
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
test ecx, 38
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 0
cmovnbe rbx, rdi
add dl, 56 # instrumentation
cmovle rbx, rdx
add bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
imul esi, edx
mov rcx, 5862286138240743445
not cx
and bl, sil
or ax, -12775
movzx rcx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
