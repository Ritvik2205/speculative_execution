.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
cmp dl, al
mov al, 125
and dil, -23
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
bt eax, ebx
cmovnz rcx, rcx
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
cmovo ebx, eax
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
cmovle ax, ax
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and bl, 76
mul dx
cmp bl, cl
test rdx, -1074289902
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
adc bl, 97
test rax, -813666773
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
adc dil, -17
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
cmp cl, 107
cmovnbe rsi, rcx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
xor al, -6
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
mov ebx, edi
and cl, -101
cmp ax, 26170
sub al, 96
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
btc rax, 72
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
imul dx, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
cmovbe esi, esi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
