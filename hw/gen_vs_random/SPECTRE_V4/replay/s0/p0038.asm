.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
cmovbe bx, di
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or ax, 28571
test edx, -38580719
xor rdx, rcx
or dl, dl
sbb eax, 1675303701
btc rax, rbx
sub edx, eax
and rcx, -20
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp rax, -1247892360
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
bt rdi, rbx
sbb al, -43
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 120
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 88
test dl, cl
mov bl, 29
adc bl, cl
cmp ebx, -19
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, -1127383570
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1914398062
cmovnz eax, eax
sbb al, 54
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
