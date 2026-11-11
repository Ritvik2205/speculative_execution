.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
add dl, 41
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
add dil, al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
cmovnp rcx, rsi
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 40
adc dl, dil
cmovle rdi, rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 56
mul cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 28
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
cmovnbe ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
bt eax, edx
mul rbx
sbb dl, -99
sbb cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
imul rax, rbx, 63
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul di, ax
movzx cx, bl
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
xchg eax, esi
or eax, -1434249782
cmp si, 20
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
or cl, al
cmp rdx, 43
cmovns ax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
adc ax, 17
neg bl
and ecx, 1
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 49
cmovz edx, eax
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
test al, dl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
movsx eax, bx
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
