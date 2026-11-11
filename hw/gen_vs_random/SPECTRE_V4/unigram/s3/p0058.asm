.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovnb edi, edx
bswap edi
cmp eax, -92285311
or bl, al
neg al
or sil, bl
add cl, -21 # instrumentation
adc rax, 65
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
sub rsi, rbx
adc eax, -79
cmp rbx, 74
sbb rdi, 90
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rcx
cmovle dx, dx
sbb bl, 57
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
test sil, 7
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
or si, bx
or bl, dl
cmovb rdi, rcx
cmovnle ebx, esi
mov ebx, 65
test eax, -818909344
or sil, al
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
add dl, 41
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
imul edx, ecx, 17
dec rdx
add cx, 75
sub bl, sil
sbb rbx, 74
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 97
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
add bl, 72 # instrumentation
cmovle bx, di
xor ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
imul cl
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
