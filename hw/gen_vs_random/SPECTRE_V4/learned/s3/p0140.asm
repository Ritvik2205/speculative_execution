.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 26
test dl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
sub rbx, 4
cmovnb di, di
neg al
mul ax
dec rcx
bts ax, si
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cwde
bt rdi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
test dil, 86
cmovp esi, ecx
add ebx, 3
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
sbb al, 32
imul si, cx, 72
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
btc ax, di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 99
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
adc al, cl
test eax, -544019457
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 72
cmp bl, bl
cmp ax, -15031
test si, di
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 61
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
cmovnp ecx, edi
cmovl rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
