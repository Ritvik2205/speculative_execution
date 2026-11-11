.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
test dl, 19
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
sbb rcx, 85
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovz eax, eax
movzx rdx, sil
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
xchg ax, bx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
add dl, -10 # instrumentation
cmovnbe edx, eax
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
imul dx
xor bl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 44
or dl, sil
sbb al, dl
test bl, 0
and bl, 26
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
mul ax
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
cmovnz edx, ecx
xor al, dl
cmp sil, 88
btc rdx, 4
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, edi
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
add al, -26 # instrumentation
btr eax, 69
mov rax, -8696242625349627833
cmp al, dl
test sil, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 8
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
cmovnle ebx, edx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovnb ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 2
sbb bl, 57
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
