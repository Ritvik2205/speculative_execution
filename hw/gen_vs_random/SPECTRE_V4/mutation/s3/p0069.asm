.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe esi, esi
and cl, 126
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
adc dil, -48
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
mul dx
cmovle ax, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
mov al, 9
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
imul dx, ax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
cmp ax, 28568
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
cmovnz rcx, rcx
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
cmovnbe rsi, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
xor al, 57
cmp bl, cl
cmovo ebx, eax
adc bl, 97
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
test rdx, -1074289902
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and dil, -61
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmp cl, -80
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
mov ebx, edi
test rax, -813666773
sub al, 54
btc rax, 227
and bl, -60
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
