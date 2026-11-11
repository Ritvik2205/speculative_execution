.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, 1802312508
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
add ebx, edx
cmovs edx, ecx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc edi, 47
movzx di, sil
adc bx, bx
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
neg ax
bswap rbx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sub sil, -50
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 43
cmovnb esi, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 86
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test dl, al
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rdx, rcx
cmovle rdi, rdx
sub rdx, 22
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
movzx rcx, di
cmovl rdi, rax
cmovp esi, edi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
bt ebx, 228
sbb dl, dil
cmovnbe eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
