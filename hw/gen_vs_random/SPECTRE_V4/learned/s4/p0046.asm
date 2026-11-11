.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, 23760
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
cmovnbe cx, si
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rbx, 69
cmovnz edx, esi
cmovo rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
sub eax, -523763262
test rax, -331426050
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
movzx ecx, al
imul cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 43
xor esi, ebx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
cmovnbe di, bx
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
movzx edx, cl
xchg bl, dl
and bl, al
mov al, cl
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test al, 80
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovo dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
