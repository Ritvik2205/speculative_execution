.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edi
and rbx, 30
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovle rcx, rbx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add dl, -8 # instrumentation
xchg cl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub dil, 35
mul cx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
test al, sil
not si
or edi, -78
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
imul dl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 82
bswap eax
adc al, dl
cmovo cx, di
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rax
cmovnb ax, si
add bl, 69 # instrumentation
cmovnbe ax, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
imul si, ax, -75
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
dec cx
cmovns si, bx
xchg dil, dl
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 97
and cl, 126
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 10
movsx ax, cl
and dx, bx
add bl, 74 # instrumentation
cmovle ebx, esi
sub dil, 35
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and si, di
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
