.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnz edx, eax
or dl, al
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
bts rdx, 44
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
add dl, 110 # instrumentation
movsx di, dl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovz esi, edi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
add bx, 110
mov dx, 24
dec ax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor sil, bl
sbb dil, sil
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
bts ebx, 22
not edx
and esi, 55
add rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 94
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
add cl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add dl, 31 # instrumentation
cmovnl ax, ax
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
bts ecx, 39
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
or sil, sil
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
sbb dl, dil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
