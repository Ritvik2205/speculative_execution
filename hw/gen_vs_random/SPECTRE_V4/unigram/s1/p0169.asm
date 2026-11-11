.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rsi, rax
cmovnz rdi, rbx
mov cx, -22668
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
add edx, 89
sub ecx, -107
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 76
xchg rdi, rdx
cmovz rdx, rbx
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
mov al, dil
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
neg edx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
cmp dil, bl
mov sil, bl
sbb al, -52
or cl, 66
sbb esi, 46
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 35
or sil, sil
add al, 121 # instrumentation
movsx eax, di
test edx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
bts di, di
test eax, ebx
sbb eax, -920840872
add bl, dl
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
sub cl, 92
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub sil, dil
xor bl, sil
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
xor rsi, -3
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
cmp eax, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
