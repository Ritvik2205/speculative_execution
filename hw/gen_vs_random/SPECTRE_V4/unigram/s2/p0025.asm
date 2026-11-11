.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edi
cmp rcx, -121
mov edi, 412386591
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], -117
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
cmovz edx, edx
cmovs rsi, rbx
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
mov rsi, 4368505613814921305
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and bl, sil
cmp al, 115
movsx rcx, bl
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
xor si, dx
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 51
movzx esi, si
dec al
xor bl, bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
neg edi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
btr cx, 252
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], esi
xor dil, -23
test dil, -26
bts ax, 159
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 40
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 2
add al, -82
and al, al
or dil, -104
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
imul al
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 95
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
cmovbe rax, rdi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
