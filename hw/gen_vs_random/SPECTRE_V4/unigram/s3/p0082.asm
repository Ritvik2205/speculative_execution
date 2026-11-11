.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
or ax, ax
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 48
mov bl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
xor al, cl
adc bl, dil
cmovbe rdi, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
dec dl
mov rsi, rax
sub di, ax
cmovnz rcx, rbx
adc rbx, 60
mul ax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
test bl, bl
cmovz di, dx
and rdx, 84
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
movsx cx, bl
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 46
dec rsi
add dil, al
cmovnbe eax, ecx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
btr esi, eax
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
sub bl, dl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmp bl, -79
add dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 98
sub cl, bl
add dl, 46 # instrumentation
adc dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
