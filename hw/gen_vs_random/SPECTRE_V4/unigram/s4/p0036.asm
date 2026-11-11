.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -99
sbb cx, 71
and dl, bl
sbb al, 123
cmp dl, 71
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
add al, al
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 69
xor rdi, 35
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
sbb dil, al
movzx cx, dil
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and ax, 35
sub cl, -74
or cl, sil
cmovl rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 75
add dl, -99 # instrumentation
not eax
add dil, dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
movzx rax, dil
movsx rcx, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
cmp dx, 57
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
test eax, -818909344
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
bt ebx, ecx
test bx, -1599
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
add cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
add ebx, esi
cmovp ecx, ecx
add al, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
add dil, al
cmp cl, 70
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 46
sub dl, 43
and bl, al
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
