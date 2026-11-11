.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or bl, dl
sub dl, dl
test sil, sil
and al, cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
cmp dl, 55
and rsi, 33
dec rdi
add bl, sil
btc rdx, rcx
sbb sil, sil
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
cmovnp ebx, edi
test dl, dl
add dx, -90
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
test rcx, -2118888343
cmp al, cl
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 59
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sub al, 98
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
test bl, al
or sil, 51
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
or dl, dil
bt ecx, 18
btc bx, si
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and dil, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 52
or dl, 56
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
dec rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
