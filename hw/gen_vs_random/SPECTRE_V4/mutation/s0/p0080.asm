.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb bx, dx
and ax, -6897
bt rcx, 189
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmp edx, edx
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
adc dil, -17
xor bl, al
btr di, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
xor cl, cl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
test ecx, -304234347
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bl, sil
cmp al, 98
bts di, si
test sil, dl
movzx si, cl
imul rcx, rsi, -43
btc edx, ebx
cmp dil, 53
mul si
movsx ax, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
bt ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, al
or rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
xor dil, -23
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
