.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
adc al, 43
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
add al, -29
xchg ecx, eax
cmovz bx, dx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
sub edi, eax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmp eax, -813838876
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
movzx edi, sil
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
movsx rcx, cl
xchg al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
sub edx, edi
and dx, si
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 37
mov rbx, rcx
mov edi, ecx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
mov rdx, -3284511739993892328
cmovnz rdx, rax
and ax, 25163
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
adc rax, -827748523
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
