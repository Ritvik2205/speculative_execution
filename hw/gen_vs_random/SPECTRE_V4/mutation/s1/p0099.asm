.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -20 # instrumentation
adc bl, dl
cmp cl, 107
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or rdx, rdi
adc bl, 0
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
cmovp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
neg bl
test dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
btc rax, 124
sbb al, -4
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 714283065
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 13
test dl, cl
mov bl, -69
adc bl, cl
cmp ebx, 80
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
sbb al, -3
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
