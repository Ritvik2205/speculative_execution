.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, dl
adc dl, 8
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
sub di, 9
test cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
mov rdi, rdi
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
xchg rsi, rdi
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
and sil, -84
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
add edx, 89
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
cmovnbe ax, si
add dx, di
and edi, -102
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
or dl, al
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rsi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rsi]
add cl, 62 # instrumentation
cmovnz dx, dx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
cmovnle rax, rdx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
xchg rcx, rcx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add dl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
or dil, -104
and dl, al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 19
sbb al, -52
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
add cl, cl
cmp bx, 113
add bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
