.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmovz bx, cx
and rax, 0b1111111111111 # instrumentation
or cl, -33
movsx rsi, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
xor al, 99
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
test rax, rbx
test eax, -31785616
movzx di, dil
add ax, 65
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
or rax, -823069511
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
adc dl, al
cmovnle rax, rdi
bts rbx, rcx
cmovnz si, si
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
adc rax, -691707152
btc ebx, edi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
mov al, bl
mov dl, al
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
movzx di, sil
test ax, 19171
xor rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
bt cx, si
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovl rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
inc edx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
test edx, ebx
add ebx, -57
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
