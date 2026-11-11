.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
test al, dil
or rdx, rdi
movsx di, cl
xor cl, -15
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
test dil, 64
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
and rdi, 45
not al
and ax, 4
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
test ax, dx
btr si, ax
xchg dl, al
cmp al, dil
add dl, -12 # instrumentation
cmovp ecx, esi
sub bl, 56
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
bts eax, eax
cmp rbx, -66
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 32
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 21
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
test bl, -16
cmp ebx, eax
xchg rdx, rbx
or dl, 1 # instrumentation
neg ecx
mov al, -114
sub cl, -127
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 99
movsx ecx, sil
add cl, dil
add bl, -38
add cl, -23 # instrumentation
cmovno edi, eax
test rcx, rdx
and ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
