.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
mov rdi, rcx
movsx rcx, sil
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
cmovnz di, dx
mov rax, -8696242625349627833
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 54
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add edx, 68
or edx, ebx
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
add al, al
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
or di, 80
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
imul ebx, esi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
dec eax
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
not ax
sbb rcx, 40
bts ebx, 22
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 17
bts rdi, rbx
test edi, -1249897727
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 96
cmovz rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmovp edi, eax
bts ebx, 22
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
