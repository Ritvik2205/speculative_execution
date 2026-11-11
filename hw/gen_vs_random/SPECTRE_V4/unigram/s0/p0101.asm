.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
or rax, 980130592
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 60
or cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
bt ebx, 40
and rsi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rsi]
adc cl, cl
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
cmovnz rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
add al, 116 # instrumentation
cmovns edx, eax
bt cx, ax
bswap rdi
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
cmovno ecx, eax
cmovns si, ax
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
test rdi, -795635070
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and esi, 126
adc bl, sil
cmovb esi, edx
neg rbx
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
xor al, -66
cmovnbe ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
add al, bl
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
btr esi, 227
adc bl, bl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
add edx, ecx
add cl, -9
btc rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or ax, -30990
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
sub eax, -1627558845
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
or si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
