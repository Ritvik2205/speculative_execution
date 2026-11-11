.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
mov dx, di
cmovz esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
cmovle rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add al, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb cl, 12
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
neg bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and dl, al
btr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test esi, -222751961
bt cx, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
cmp al, -122
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
