.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rsi, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
imul ebx
movzx esi, sil
add dil, -84
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 64
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 27
imul cx
movsx edi, bx
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
cmp rdx, -49
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sub dl, cl
cmovle rcx, rsi
or al, -90
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
adc rax, 519150753
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
add al, -79 # instrumentation
adc rax, 16
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
adc al, bl
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
add al, -7 # instrumentation
btc ax, cx
movsx ebx, dil
add rsi, 44
add cl, -23 # instrumentation
cmovno edx, ebx
adc edi, esi
cmp ecx, 91
bt si, dx
test al, dil
and al, cl
cmovnle eax, ebx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
test al, 115
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
neg cl
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
bt rdx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
