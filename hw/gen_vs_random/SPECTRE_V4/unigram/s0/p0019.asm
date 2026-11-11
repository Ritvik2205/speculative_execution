.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
cmovb ebx, edx
cmovle rdx, rdi
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
add dl, dl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
cmovns cx, dx
test ecx, 49
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovp edi, eax
cmovns cx, di
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 42
cmp rdi, 1
btc ax, di
cmp cl, 54
mul edx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 9
and rdx, 51
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, -42 # instrumentation
adc sil, dil
or dil, dil
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
cmp rcx, 49
add dl, -114 # instrumentation
cmovl bx, di
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
test cl, -89
imul di, dx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
movzx eax, dl
add rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
xchg rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
and rsi, 97
xor al, 56
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add cl, -82 # instrumentation
sbb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
