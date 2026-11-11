.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 29
mov cl, dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
btc rax, rbx
cmovnz eax, eax
cmovl esi, ecx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
movzx edx, sil
test cl, bl
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
cmovbe bx, di
bt rsi, rbx
adc al, sil
and cl, dl
sub rax, 1914398062
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp ebx, -19
cmp rax, -47
btc rdi, rax
sub rax, -1881584175
mov dl, cl
adc eax, 917540672
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
sbb eax, 1675303701
mov bl, 106
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
test dl, cl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
sbb al, -4
bt rdi, rbx
test edx, -38580719
or dl, dl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
adc bl, cl
xor cl, 13
xor rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
sbb al, 57
or ax, 48
sub edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
