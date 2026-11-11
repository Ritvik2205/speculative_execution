.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 19
xor al, -2
test ebx, 1263899340
inc ebx
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
add bl, 38 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
add cl, -42 # instrumentation
adc dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmp ax, -15031
bts si, 30
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 81
cmovb cx, cx
add cl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
add rdx, 32
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
add rdi, rsi
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
add si, 4
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and sil, al
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
mov bx, -31043
add cl, -42 # instrumentation
adc sil, dl
btc rbx, rdi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add dil, sil
add rcx, rdi
test al, cl
imul si, di, 1
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or al, 109
cmp bl, 13
btc cx, ax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
imul rax, rsi, 32
test eax, -544019457
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
imul rbx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
imul rsi
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
