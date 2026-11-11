.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
xchg rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
btr dx, cx
or dl, dil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 8
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 2
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
btr rdi, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and eax, -24
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and bl, -63
adc sil, 89
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
cmovnb edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovnb dx, dx
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
adc bx, -89
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
movzx rax, bl
imul rdi, rsi, 57
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
not bx
cmp bl, sil
test rcx, -2118888343
bt edi, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or sil, 27
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovle rbx, rsi
cmp rax, -1102558854
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovl rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
