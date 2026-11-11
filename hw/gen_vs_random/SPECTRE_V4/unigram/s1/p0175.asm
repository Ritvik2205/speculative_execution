.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 43
xchg rdx, rdx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
add cl, -75 # instrumentation
sbb esi, 39
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
mov esi, 1695134926
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add bl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
test di, -19523
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
add sil, cl
add cl, -9
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
xor bl, sil
add al, 27 # instrumentation
mov cl, dl
sbb dil, 55
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 100
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
inc rsi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add bl, 102 # instrumentation
cmovnp esi, edi
add bl, dil
or bl, -35
movzx edx, ax
or ebx, -82
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
sub bl, -89
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
or al, al
imul rbx, rbx
cmp ecx, edi
or edx, -83
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
