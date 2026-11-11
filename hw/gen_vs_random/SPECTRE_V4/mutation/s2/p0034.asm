.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
test rax, -1395313845
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
cmp dl, al
sub al, 96
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
mov al, 124
cmp ax, 26170
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
mov ebx, edi
cmp cl, 59
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
mul dx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
cmovnbe rsi, rcx
test rdx, -1074289902
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
adc dil, -48
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and bl, -30
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
xor al, 124
bt eax, ebx
and dil, -120
cmovbe esi, esi
cmovnz rcx, rcx
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and cl, -118
btc rax, 72
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
adc bl, 127
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovo ebx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovle ax, ax
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
