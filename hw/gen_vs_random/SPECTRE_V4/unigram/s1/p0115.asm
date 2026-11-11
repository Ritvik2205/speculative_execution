.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns esi, ecx
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 60
imul cl
cmovz edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovp si, bx
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
cmovle dx, dx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
sbb dil, 72
cmovo rax, rax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 29
dec sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
add ax, -15653
add rdx, rbx
add al, 122 # instrumentation
cmovns esi, ecx
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
test al, dil
test dil, bl
movzx rbx, di
add dl, sil
sub dl, dl
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
add bx, 110
inc cl
add rax, 86
cmovnb rbx, rdx
mov al, dil
cmp al, 114
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
