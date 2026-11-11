.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ecx, esi
cmovb si, si
bts di, 69
cmovnbe ax, dx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sbb edx, 50
sub ebx, edx
cmovnp cx, bx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
cmovb rdi, rbx
test ecx, 49
cmovle rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
add dl, -99 # instrumentation
not edx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
movzx cx, cl
sbb edx, 46
add si, si
mov bl, cl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add bl, -115 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 60
sub cl, 116
xor dl, dl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
add cl, 8 # instrumentation
adc dl, cl
cmp edx, 94
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
mov al, al
add dl, -99 # instrumentation
not ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and cx, 17
add dl, -99 # instrumentation
not edx
cmp bx, 64
add cl, -42 # instrumentation
adc al, sil
or cx, 16
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
bts rcx, 73
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
imul rdi
cmp dl, dl
test edx, 573099753
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
