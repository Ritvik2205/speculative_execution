.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, -73
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
add al, dl
btr ax, 109
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
btr dx, 245
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
add dl, 29 # instrumentation
cmovnl rdx, rbx
add edi, eax
xchg rcx, rdx
sub dl, 107
and eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
xor dx, dx
inc rbx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
sbb al, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
imul di
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rax]
add cl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
or dl, 1 # instrumentation
neg edi
or cx, di
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovnb di, ax
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
test dl, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
xchg rbx, rsi
mov ebx, 51969593
cmp edi, 3
cmovbe bx, di
or cl, bl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
bts ebx, 189
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
movsx edx, dl
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
