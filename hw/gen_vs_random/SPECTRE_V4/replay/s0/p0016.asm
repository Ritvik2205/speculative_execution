.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
sub edx, edi
sbb cl, cl
and dx, si
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
xchg ecx, eax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
mov rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
cmovz bx, dx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rax, 1827025056
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
movzx edi, sil
mov rdx, -3284511739993892328
and ax, 16313
xor cx, -80
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
cmp eax, -1538116527
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
adc rax, 1682231791
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
sub edi, eax
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
adc al, 43
xchg al, bl
cmovnz rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
movsx rcx, cl
add al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
