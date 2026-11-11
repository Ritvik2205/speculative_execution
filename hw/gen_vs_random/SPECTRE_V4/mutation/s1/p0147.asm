.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ebx
xor al, 99
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
cmovbe esi, esi
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and dil, 8
btc rax, 124
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and cl, -101
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp cl, -80
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
test rdx, -1074289902
cmovle ax, ax
cmp ax, -22704
cmovnbe rsi, rcx
cmovnz rcx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
mul dx
cmp bl, cl
test rax, -813666773
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
adc bl, 127
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
sub al, 29
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
mov ebx, edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and bl, 76
mov al, 82
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
adc dil, -15
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
cmovo ebx, eax
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
imul dx, ax
cmp dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
