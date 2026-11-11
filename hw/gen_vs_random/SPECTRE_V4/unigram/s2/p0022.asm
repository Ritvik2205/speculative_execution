.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, al
and rdx, rsi
or bl, bl
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
xor dl, -66
bts esi, 18
add ebx, eax
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
sbb sil, 24
test al, 27
sub cl, cl
add cl, -123 # instrumentation
sbb dil, 29
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmovbe di, cx
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
neg rbx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
sub cl, cl
add bl, -24 # instrumentation
cmovnbe di, di
or rax, -943474997
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 3
imul rbx, rcx, 18
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
cmovle rbx, rax
xchg al, bl
sub dil, 35
neg ecx
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
btr eax, eax
bt di, 49
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
mul dl
and al, -87
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
cmovp rdi, rax
xchg ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
