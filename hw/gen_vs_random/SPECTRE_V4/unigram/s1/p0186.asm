.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdx, di
neg dil
adc rax, 1690546225
test dil, -83
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
test bl, 110
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
or dil, dil
inc ax
cmovno rbx, rsi
not di
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
and rdi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdi]
adc dl, cl
cmovb esi, edi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
adc rax, 253624080
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 60
btc esi, 63
movzx rbx, cx
cmovl rcx, rdx
mov dl, al
or al, al
and al, al
test dl, 24
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
bt ax, si
and dx, -107
sub dil, 35
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
btc rbx, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 75
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
