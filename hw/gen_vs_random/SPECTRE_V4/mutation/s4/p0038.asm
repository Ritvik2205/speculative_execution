.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
movzx edi, sil
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
mov rdx, -3284511739993892328
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
add al, -3
mov rbx, rcx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
adc al, 41
and ax, -12738
mov edi, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
cmp eax, 512128713
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
xchg al, bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
sub edi, eax
xchg ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
sub edx, edi
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
cmovnz rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
adc rax, 1690546225
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
cmovz bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
xor cx, -80
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
sbb cl, cl
and rax, 1827025056
and dx, si
movsx rcx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
