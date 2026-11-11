.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, -60
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, -17
test rax, -813666773
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, 119
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, 26170
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
btc rax, 124
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmovnz rcx, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovbe esi, esi
and cl, 126
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
adc bl, 127
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and dil, 8
xor al, -120
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
cmp dl, al
cmp cl, 49
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
mov ebx, edi
sub al, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
