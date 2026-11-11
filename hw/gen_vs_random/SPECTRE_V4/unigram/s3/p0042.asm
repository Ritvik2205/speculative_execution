.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
xor al, cl
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
movsx ecx, ax
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
cmovnb bx, bx
not al
and ebx, ebx
add bl, -43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
cmovp rdx, rbx
test bx, dx
cmovnp dx, bx
cmp sil, -100
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
add al, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
mov cl, al
and eax, -2040347881
or dl, -26
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mul ecx
test bx, 24072
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 84
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 76
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
test esi, -222751961
imul ecx
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
sbb rdi, rax
add cx, bx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
