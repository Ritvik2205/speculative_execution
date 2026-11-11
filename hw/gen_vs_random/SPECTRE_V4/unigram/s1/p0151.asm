.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 49
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
add ax, cx
sub si, -92
neg dx
adc rcx, rdx
or cl, bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
mov dl, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
bt edi, esi
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
test bl, -16
adc al, al
sub al, 59
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and al, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
sub bl, bl
xor al, cl
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
xor ecx, 20
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xor sil, sil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
sbb rdi, 67
add cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
xchg sil, sil
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 73
btc rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
cmovnp si, dx
not bx
cmovle rdi, rbx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
