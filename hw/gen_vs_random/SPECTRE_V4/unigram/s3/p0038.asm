.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
xor dx, -43
cmovnb si, si
btr rax, rcx
mul dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 51
cmovp cx, si
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
not cx
dec rsi
imul eax, ebx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
add ebx, -57
xor al, dil
mov bl, 29
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add cl, -33 # instrumentation
not cl
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
xor dl, -66
adc sil, al
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
movsx eax, ax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
add ecx, edx
cmovnbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 7
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 96
xor si, -73
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
mul cl
movzx esi, di
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 63
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
