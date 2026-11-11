.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or dl, dl
adc di, -78
sbb eax, edi
or eax, -1341747033
add dil, -84
cmp rdx, rbx
movzx rax, di
test sil, 1
neg ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
cmp al, cl
adc ax, dx
cmovb rsi, rax
sbb sil, -124
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp sil, 127
cmovs ecx, esi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 714283065
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 13
test dl, cl
mov bl, 106
adc bl, cl
cmp ebx, 80
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, -3570960
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 714283065
cmovnz eax, eax
sbb al, -4
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
