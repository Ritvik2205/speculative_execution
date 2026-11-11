.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp si, dx
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ecx
cmp cx, ax
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb cl, 19
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 9
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
cmovnbe esi, eax
cmovs rax, rdi
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 59
cmovnp rbx, rbx
cmovs dx, dx
xor bx, dx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
xchg rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
cmp dil, sil
add cl, -21 # instrumentation
adc rbx, 1
and dl, bl
not bx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
add cl, -21 # instrumentation
adc rdx, 9
and dl, 95
dec di
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
cmovo cx, ax
cmovnz eax, ebx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
bswap rsi
adc sil, bl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and ax, 35
test esi, 44
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 71
imul dl
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 83
add dl, 41
sbb dl, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
