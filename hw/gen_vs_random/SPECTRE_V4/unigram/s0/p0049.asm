.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
add rdi, 105
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 90
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp ecx, 81
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
dec al
cmovnp edx, esi
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
and sil, -49
add dl, dl
cmovo esi, edx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dil, -10 # instrumentation
mov di, 21
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
mul rbx
sbb cl, 19
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
not si
add rax, rsi
cmovl rbx, rdi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sub esi, ebx
xor esi, 49
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 38
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmovnb ax, ax
cmovnp rcx, rcx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
dec rbx
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
