.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
xor si, dx
cmovnz di, ax
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
xor sil, dil
cmovz ebx, ebx
cmovnz rcx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnbe si, di
adc bl, al
mov rax, -4627568876460436527
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
movzx ebx, dil
not dl
bts dx, 26
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovl rcx, rsi
cmovnbe rbx, rdi
test al, 52
cmovl si, di
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovl rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
