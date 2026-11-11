.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rsi, bl
cmovnle rax, rdi
test rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or rax, -897763206
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rax, 0b1111111111111 # instrumentation
or cl, -33
test edx, ebx
cmovl rsi, rdi
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
movzx di, dil
test eax, 1600638830
bts rbx, rcx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
cmovnz si, si
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
mov dl, al
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
cmovz bx, cx
xor al, 48
xor rax, rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
movzx di, sil
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add ebx, -57
adc dl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
inc edx
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
add ax, 10655
btc ebx, edi
mov al, bl
bt cx, si
test ax, -23852
adc rax, 310915511
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
