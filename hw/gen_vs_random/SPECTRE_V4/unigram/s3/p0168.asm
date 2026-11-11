.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 51
add bl, -115 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 83
add cl, -117 # instrumentation
cmovs rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
sbb bl, sil
or eax, 1802312508
or edx, -127
cmovnbe rdi, rsi
cmovle rbx, rdx
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp sil, sil
cmovnbe bx, si
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
adc eax, -79
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
imul dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
add cx, 64
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
cmovnbe rdi, rdi
dec cx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
xor dl, 8
test dl, 19
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
mul esi
add edi, 11
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add cl, 122 # instrumentation
cmovz rcx, rdi
btc dx, 16
not cx
inc ebx
add dx, -90
test bl, 0
test edx, 573099753
bts eax, 209
mov eax, edi
bt ebx, edx
sbb cl, 20
sbb rsi, -115
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 25
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
