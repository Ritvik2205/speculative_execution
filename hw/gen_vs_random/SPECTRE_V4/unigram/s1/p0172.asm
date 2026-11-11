.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and bl, -60
mov ebx, 51969593
mul ax
movzx dx, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
cmovbe ax, di
cmp bx, 113
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
cmp al, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and si, -74
dec bl
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
inc dx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 72
movsx cx, bl
or dl, 1 # instrumentation
neg ecx
mov rbx, rax
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
add cl, -77 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
movzx rax, bx
xor al, -82
test al, -38
or di, 2
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
cmovnbe rax, rdi
cmovbe dx, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovnz si, dx
test dl, -125
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
add bl, 71 # instrumentation
adc bx, ax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
test ecx, 860867711
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
or cl, dil
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
