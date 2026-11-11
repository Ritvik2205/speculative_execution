.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
xor sil, dl
and sil, -49
add dx, -90
btc rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
movzx esi, bl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovz ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
sbb rbx, 21
not cx
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
add al, dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
sbb edx, 74
add dil, dil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 50
cmovnbe rdx, rax
sub rbx, 24
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
or bl, 84
mov rdi, rsi
bts rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
cmovp rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovnbe rbx, rbx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
cmovo rbx, rsi
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
add sil, 56 # instrumentation
cmovle rdi, rsi
cmovz edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
