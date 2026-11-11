.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -19
sub edx, eax
test dl, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and rcx, 11
test cl, bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
adc al, sil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
test edx, 1479885278
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
xor rdx, rcx
movzx edx, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
adc bl, cl
sbb eax, 727775941
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovl esi, ecx
sbb al, -52
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
btc rdi, rax
bt rdi, rbx
btc rax, rbx
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and cl, dl
cmp rax, 1097504565
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
or ax, -30990
cmovnz eax, eax
sub rax, -1881584175
sbb al, 70
cmovbe bx, di
xor cl, 88
sub rax, 2016976449
bt rsi, rbx
mov bl, -69
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
adc eax, 1307735127
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
mov cl, dl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
