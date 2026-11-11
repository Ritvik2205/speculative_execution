.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and ebx, 57
test rbx, 4
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 17
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmp al, -52
cmp dil, al
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
mov di, 99
btc si, di
btc di, 93
adc bl, sil
mov dil, dil
add cl, -117 # instrumentation
cmovs rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
add dil, 56 # instrumentation
cmovle rax, rdi
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
test sil, bl
adc dl, 99
movsx eax, cx
inc rbx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 39
test edx, 573099753
not di
imul rdi, rbx
xor dl, 85
or dx, 84
bts dx, 19
sbb al, 32
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
xor dl, 47
not ax
adc cl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
imul rax, rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 37
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
