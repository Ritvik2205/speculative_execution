.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc eax, -3570960
and cl, cl
add rsi, -100
adc eax, 1378432629
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sbb rbx, 20
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
bts cx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc sil, cl
cmovle rbx, rax
xor dl, -66
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
xor ax, 15671
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
adc cl, 111
sub al, 86
or eax, -612395655
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul cx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub eax, -865916088
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
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
adc bl, 79
movzx eax, al
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
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
