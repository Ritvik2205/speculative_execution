.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 65
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmovo ax, ax
sub eax, -672265139
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, -127
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -1237519395
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
movsx eax, sil
adc al, 116
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
movsx si, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
cmp ax, 26170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
