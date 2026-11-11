.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
bts esi, 241
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
cmovnb rax, rcx
or sil, sil
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
bt eax, edi
add sil, 110
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
sub al, cl
imul bl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
cmp rcx, 83
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
btc bx, 49
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
bts ecx, 39
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
add dl, 41
or eax, edx
add cl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmp al, 114
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
test al, bl
dec dil
test cl, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovnbe si, cx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
sbb eax, esi
add eax, -1796699558
sbb dl, -99
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
btc rcx, 36
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
add rdi, rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
