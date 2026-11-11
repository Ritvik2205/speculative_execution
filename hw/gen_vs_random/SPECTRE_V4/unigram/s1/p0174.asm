.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ecx, 35
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
bswap edi
not ebx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
cmp edi, -104
sbb bx, 68
adc ax, 71
mov esi, 41
cmovnbe rax, rsi
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
bts rax, rax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 52
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
cmp sil, 88
test bx, -1599
cmp bx, 21
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or dx, cx
dec rbx
and al, cl
sub esi, 52
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
sbb ecx, 36
and di, 61
bts eax, 209
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
not di
imul bx
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sbb al, -62
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
