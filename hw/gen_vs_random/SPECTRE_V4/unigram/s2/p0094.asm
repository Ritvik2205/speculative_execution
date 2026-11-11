.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, eax
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, bx
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
sub dl, 43
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
add cx, 74
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 24
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 67
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
test sil, cl
xor bl, 93
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 85
dec bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add sil, 72 # instrumentation
cmovle si, di
bt edi, 59
adc esi, 90
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
neg si
add bl, -72
sub cl, al
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
add si, 4
cmovnbe rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
sub sil, -50
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], esi
cmovnp rbx, rbx
imul ebx, edi, 74
movzx bx, dil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
or bl, sil
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
bts edx, 4
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
cmp dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
