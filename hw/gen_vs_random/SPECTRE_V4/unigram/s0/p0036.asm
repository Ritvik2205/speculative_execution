.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ebx, edi
movsx rdi, sil
cmp cx, di
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 46
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
test rdx, -1074289902
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
cmovnb rdi, rsi
add cl, -23 # instrumentation
cmovno eax, edi
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
xchg sil, sil
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
cmp al, -116
and rdx, rcx
test rcx, rdx
cmovo ax, dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
dec dil
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 77
test sil, al
test ecx, -907816607
add cl, -33 # instrumentation
not sil
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb rbx, 20
cmovnz rsi, rdx
cmovo eax, edi
not bx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add bl, dl
imul esi, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and dl, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and al, sil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
xchg rdi, rdi
add dl, -8
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
inc rsi
mov bl, bl
sbb dl, sil
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
