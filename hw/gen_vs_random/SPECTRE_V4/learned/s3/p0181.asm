.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, ax
movsx cx, sil
add bl, al
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 54
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
btr cx, bx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
test eax, 1561062795
movsx si, al
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
cmovnle rsi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
cmovnbe rax, rcx
cmp ax, -15031
adc dl, bl
not rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
add sil, 110 # instrumentation
movsx ax, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
xor edx, eax
movsx rsi, cx
cmovnbe si, di
add dl, 41
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 48
xor ax, 28088
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and al, -127
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
