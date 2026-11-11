.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
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
xor byte ptr [r14 + rdx], 85
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
and rax, 37
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
or rsi, rsi
cmovz edi, esi
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor rax, -111081832
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
btc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
mov rdi, -3495947874455269481
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
