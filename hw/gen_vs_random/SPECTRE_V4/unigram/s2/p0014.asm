.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
imul dl
add di, di
cmovp rax, rcx
and di, 29
neg rax
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
add edx, 72
sbb edx, 81
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
imul bl
cmovs rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
inc edx
cmovl rcx, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
test al, 66
or esi, 95
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovb ebx, ebx
add cl, 72 # instrumentation
cmovle cx, ax
test cx, 11
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmp dil, dil
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
sub edx, edi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 33
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
movsx rdx, al
sbb al, dil
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and dil, 96
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
