.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
movzx edi, cx
cmp al, sil
not al
and ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 9
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
test cx, 7280
inc cl
add bx, 56
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
movsx rcx, di
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
add rbx, 53
add bl, -2 # instrumentation
cmovs rdx, rcx
bts bx, 102
cmp ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
sub cx, di
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and edi, -102
and ecx, 71
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
cmovbe bx, si
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
mov edi, -744634650
or si, -84
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
or dil, 89
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
add ecx, 99
or cl, 66
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 19
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 63
or ecx, 17
btc esi, 63
add cl, 111 # instrumentation
cmovnle dx, ax
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
adc si, cx
cmovb dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
