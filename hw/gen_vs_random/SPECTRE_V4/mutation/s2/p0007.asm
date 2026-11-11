.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, eax
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and bl, -60
btc rax, 72
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
mov ebx, edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
cmovnz rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
bt eax, ebx
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
adc bl, 0
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
mul dx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and cl, 126
sub al, 127
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
imul dx, ax
cmovbe esi, esi
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
mov al, 119
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, 124
and dil, -23
test rax, -269735774
xor al, -60
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmp cl, -105
cmp ax, 28568
cmp dl, al
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
