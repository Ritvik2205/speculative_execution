.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
mov eax, edx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
movsx bx, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
add rdi, 111
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
imul ecx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
cmp bx, ax
sbb bl, dil
and rdx, 84
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sub rax, rcx
cmp al, -1
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp dx, -1
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
xor sil, dil
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and dil, 8
and dil, -61
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
cmp cl, 107
add cl, 111 # instrumentation
cmovnle di, dx
xor esi, 66
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
mul ax
mov dil, dil
sub cx, si
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
add bx, 50
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
or dil, 5
imul edx, ecx, -116
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
