.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and sil, al
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add rdx, 40
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub rbx, 89
and ax, 35
and dl, 85
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sbb rdx, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
cmovl rsi, rcx
test dil, 27
add cl, 122 # instrumentation
cmovz rcx, rdi
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
cmovz rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 85
add al, al
neg cl
bt ebx, ecx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
or bl, sil
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
add di, -74
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
add si, 4
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor dl, dl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test ecx, 66
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
