.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and dil, -120
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmp ax, -22704
imul dx, ax
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmovbe esi, esi
cmovo ebx, eax
cmp dl, al
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
cmp bl, cl
adc dil, -17
cmp cl, -105
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
test rax, -405021090
cmovnz rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and bl, 76
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
xor al, 30
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and cl, -118
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
mul dx
btc rax, 124
cmovnbe rsi, rcx
mov ebx, edi
mov al, 125
sub al, 29
adc bl, 97
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
