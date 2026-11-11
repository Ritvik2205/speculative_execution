.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
add bl, -74 # instrumentation
cmovnp rbx, rdx
or al, -16
adc edx, -86
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov si, -8007
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov dl, al
or rax, -943474997
sub bl, -89
and cl, cl
cmovbe rdi, rcx
and bl, dil
and al, dl
cmp al, cl
cmovle rcx, rdi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
test bl, 78
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
mov bl, 58
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
not cl
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
adc rax, 2071185388
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and ax, 4
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], si
test edi, -1380439873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
