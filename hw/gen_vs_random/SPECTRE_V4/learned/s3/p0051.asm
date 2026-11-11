.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 89
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test dl, cl
movsx rsi, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
btc ax, di
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
sbb cl, bl
add al, 118
sub dil, dl
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmovp bx, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 20
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
test eax, -818909344
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmovs ecx, edx
cmovo rsi, rsi
dec bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
cmp bl, 13
sbb dl, -99
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], bx
add dil, 82
cmovnle edi, esi
adc al, sil
cmovb di, di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
test al, bl
mul cl
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 6
mov cl, cl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
add sil, 26
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
imul rsi
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
add sil, 26
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
test ebx, -595096626
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
lea si, qword ptr [rdx + rcx + 4]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
