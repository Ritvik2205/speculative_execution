.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
cmovno edi, esi
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
or dl, dl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
dec di
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 63 # instrumentation
cmovl bx, si
imul ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe sil
add rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
test cx, 89
adc sil, dl
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 29
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
sub sil, -36
xor rsi, -3
add dl, dil
test bl, al
mov rsi, rdx
and sil, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 97
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
or bl, dl
cmovnb ax, ax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and eax, -24
xchg edx, edi
or si, dx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
movsx rdi, cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
sub dl, dl
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
