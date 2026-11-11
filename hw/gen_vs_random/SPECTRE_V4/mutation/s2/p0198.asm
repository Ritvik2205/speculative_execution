.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
sub al, -128
mov al, -71
cmp dl, al
cmovo ebx, eax
cmovle ax, ax
and dil, -23
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
mov ebx, edi
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and bl, -30
cmp ax, 28568
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
imul dx, ax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
bt eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
cmp bl, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovnz rcx, rcx
mul dx
adc dil, 112
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
cmovnbe rsi, rcx
btc rax, 124
cmp cl, 100
test rax, -269735774
cmovbe esi, esi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and cl, 32
adc bl, 79
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
