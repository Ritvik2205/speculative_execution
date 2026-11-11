.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
adc eax, -60
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
test cl, bl
cmp ebx, -19
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
mov cl, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
cmovl esi, ecx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
btc rdi, rax
or ax, 7381
movzx edx, sil
bt rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
sbb al, -52
btc rax, rbx
adc al, sil
cmovbe bx, di
adc bl, cl
sub rax, -1680844889
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
or dl, dl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
mov dl, cl
xor rdx, rcx
and cl, dl
cmovnz eax, eax
bt rsi, rbx
and rcx, 29
test edx, 1479885278
sbb eax, -141178938
cmp rax, -1070057082
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
sub rax, 1294268026
sub edx, eax
sbb al, -14
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor cl, -101
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov bl, 58
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
