.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
xchg rax, rsi
test dx, 28394
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ecx
btr rax, rax
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
bts cx, 158
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
add eax, 1255256879
cmovno ecx, ebx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
cmovnb ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
imul ebx
movsx eax, bx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
mov dl, cl
and dl, 124
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
add rsi, rax
add dil, 76 # instrumentation
sbb edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
add al, -71 # instrumentation
cmovb rdx, rax
cmovnz di, ax
or al, -83
btr rsi, 20
bt ecx, esi
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
movzx rax, cl
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
adc ecx, 114
adc rax, rdx
inc rax
cmovbe rcx, rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
xchg dx, dx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
add al, 116 # instrumentation
cmovns esi, edx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 59
cmovl cx, ax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
