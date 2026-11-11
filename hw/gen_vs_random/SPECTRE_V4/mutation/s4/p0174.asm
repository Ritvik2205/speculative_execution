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
and rax, 37
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub eax, -529389957
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
cmovp edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmp bl, cl
add rbx, rcx
adc bl, 35
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
add ax, ax
mul ax
not dl
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
