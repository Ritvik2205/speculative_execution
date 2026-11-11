.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
test sil, 1
xchg bl, bl
cmovnbe edx, esi
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
bt rdx, 98
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
or al, al
and dl, sil
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
cmp rbx, -66
or edx, 0
cmp al, cl
cmovs rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rcx
and edx, 45
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
add al, 27 # instrumentation
mov dl, cl
sub dl, -16
sub cx, dx
cmovnbe eax, eax
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
adc dil, al
cmovnz rbx, rax
imul dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
cmovo cx, si
imul eax, ecx, -17
add cl, 54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
sub bl, -98
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
sub rsi, -48
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmp cl, -105
xor edx, 75
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
