.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
sbb rdx, 92
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnb edx, ebx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
add dl, 56 # instrumentation
cmovle rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
neg dl
movzx ax, al
dec dil
mov rbx, rdi
mul rbx
add rdx, 3
xor cx, ax
adc al, -58
btc cx, si
add dil, dil
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 38
sub bl, bl
btr cx, di
cmovnbe rdx, rdi
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
cmovs esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
cmovnbe rdx, rcx
cmovle rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
cmovnle edx, esi
mul rbx
and dl, 4
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
