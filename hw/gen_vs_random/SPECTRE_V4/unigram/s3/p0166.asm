.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
movsx ecx, dl
and ecx, eax
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
add dl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add bl, 40 # instrumentation
cmovnp rcx, rbx
cmovle rcx, rax
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
mov eax, edx
test ecx, 860867711
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
mov al, 7
or cx, dx
cmovl dx, di
cmp sil, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and dl, dil
add cl, -65 # instrumentation
adc bl, cl
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmovnz rdi, rax
cmp rcx, -121
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
btc esi, 63
sub dl, sil
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
bt rax, rax
mul si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
test al, 27
sub ax, cx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
cmovo dx, di
add cl, -69 # instrumentation
adc sil, sil
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
test bl, 87
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 29
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
