.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmp cl, 59
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
sub al, -84
test rdx, -1074289902
cmp dl, al
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and dil, -61
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
adc bl, 79
mov ebx, edi
test rax, -1395313845
cmovo ebx, eax
cmp ax, 26170
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
mov al, 9
and cl, 126
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
btc rax, 124
cmovnz rcx, rcx
adc dil, -48
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
mul dx
xor al, -40
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovnbe rsi, rcx
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
cmp bl, cl
cmovbe esi, esi
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
