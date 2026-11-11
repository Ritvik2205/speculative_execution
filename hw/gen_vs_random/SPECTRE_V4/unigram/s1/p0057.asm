.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 11
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
cmovle rcx, rax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 83
xor dx, ax
xchg esi, edi
movsx edx, di
test rcx, 14
or sil, bl
mul cx
add dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
neg bl
adc ebx, 66
test di, di
adc ecx, 114
or bl, bl
xor ecx, ecx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
sbb dil, 65
inc dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
btc edi, 125
mov sil, cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
mul rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 44
and edi, -102
and rcx, 11
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmp al, sil
sub rcx, -99
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sbb sil, -11
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
imul al
cmovle rdi, rax
cmovnle eax, edi
not ax
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
