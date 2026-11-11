.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, sil
xor cl, bl
bts cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
test si, 67
sbb al, al
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
adc dl, al
add sil, 3
cmp rcx, rax
cmovnp rbx, rax
cmovs ebx, edx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], bx
btr dx, ax
and dil, dil
bt dx, 213
sub dl, sil
cmp edx, 4
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
or ecx, 17
or al, -88
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 89
or rdi, -41
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or edi, -64
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
movzx eax, bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb si, 55
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
xchg rbx, rdi
cmovnb eax, esi
test dl, cl
imul ebx, esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
cmovo eax, ebx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
test sil, 1
btc eax, 62
btc rcx, rbx
sbb dil, 70
imul di
dec al
cmp sil, bl
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
