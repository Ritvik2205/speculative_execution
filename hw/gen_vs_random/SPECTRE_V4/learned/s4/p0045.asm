.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 90
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 34
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
cmovl rdi, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub bl, dil
sbb cl, dl
neg bl
adc rbx, 50
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, al
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
dec rsi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
cmovle di, di
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 90
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or dl, 56
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnbe cx, ax
xor al, 59
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 17
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
sub dl, al
cmp dil, dl
xor sil, al
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovnl rbx, rdi
adc bl, dl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
xor dil, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
sub dl, dl
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sub dl, al
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
