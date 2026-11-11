.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -66
test rax, rbx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
or rax, 1042095162
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
add ebx, -57
test edx, ebx
adc dl, al
add ax, 6414
cmovz bx, cx
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
cmovnz si, si
xor rax, rbx
and rax, 0b1111111111111 # instrumentation
or cl, -33
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnle rax, rdi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
adc rax, -827748523
inc edx
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
btc rax, 227
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmovnz rcx, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovbe esi, esi
and cl, -128
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
adc bl, 35
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and dil, -23
xor al, 57
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
cmp dl, al
cmp cl, -105
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
mov ebx, edi
sub al, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
