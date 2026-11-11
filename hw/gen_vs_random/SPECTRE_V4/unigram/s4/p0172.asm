.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, bl
mov ecx, 61
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
dec rdx
movzx edx, dil
cmovs rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 95
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
neg ax
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 40
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovz edx, eax
test dl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
cmovnp rdx, rcx
or dx, si
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
sbb al, -47
cmovs rax, rbx
dec di
cmp al, 114
add cl, 110 # instrumentation
movsx di, cl
imul si, di
add cl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
or sil, 46
adc edx, 57
or esi, edx
cmovnl rbx, rcx
not di
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
add cl, -75 # instrumentation
adc cl, 70
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
not cx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
xor sil, al
or al, -71
movzx rax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
