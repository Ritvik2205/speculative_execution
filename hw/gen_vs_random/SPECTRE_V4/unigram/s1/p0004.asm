.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovnl bx, si
cmp rdi, 28
or edx, 0
cmovnb ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 70
sub bl, -89
and rsi, 0b1111111111111 # instrumentation
xor bl, cl
xor bx, di
test esi, -2111618709
imul dl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], esi
sbb dil, dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
add al, dil
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
xor rsi, -3
cmovs rbx, rsi
xchg ecx, esi
and cl, 32
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
add bl, al
add dil, dil
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
imul rdx, rdx
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
cmovl si, ax
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
movsx si, sil
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add dil, -8 # instrumentation
xchg al, dil
add cl, -62
add al, 80 # instrumentation
mov dil, cl
sub cl, -73
add al, bl
bts ebx, 189
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
test dl, -102
sub eax, 490935921
neg rax
sub dil, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
