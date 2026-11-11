.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
mov dil, sil
mul dl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
test sil, dl
bt edx, eax
and al, bl
not bl
xor ax, -6064
dec bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
add edx, edi
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 43
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
cmp dil, al
cmp dx, bx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
cmovnle cx, bx
sub ebx, 85
sbb cl, 127
xor cx, -80
cmovnb rcx, rbx
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
cmovl ax, dx
bts rdi, 144
xchg rbx, rbx
dec dx
cmovs dx, bx
btr bx, si
add cl, -119 # instrumentation
sbb eax, -2001663753
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmp di, -8
test bl, -91
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
xor bx, 59
cmovs rsi, rcx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
sub eax, ecx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
