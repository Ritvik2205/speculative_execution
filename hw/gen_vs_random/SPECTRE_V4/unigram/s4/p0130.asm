.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
sub dil, -28
mov sil, bl
and rax, 1072797615
imul eax, ecx, -17
adc dl, 47
or cl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
sub si, -92
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
adc al, sil
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 63
cmp bl, -16
add bl, -59
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 55
adc sil, 111
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
mov sil, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 9
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
movzx ebx, dil
mov al, -71
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 15
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
adc cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and cl, bl
sbb dil, 1
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
sbb esi, 27
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
add dl, -8
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 16
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
