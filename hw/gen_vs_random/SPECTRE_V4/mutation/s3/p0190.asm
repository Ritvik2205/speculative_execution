.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -1627558845
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, -117
sbb al, 102
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
test sil, 16
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, 28571
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
imul edx, edx
cmovo si, dx
cmp cl, dl
movzx edi, bx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovp rax, rcx
test dl, -125
cmp edi, ebx
not dil
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
