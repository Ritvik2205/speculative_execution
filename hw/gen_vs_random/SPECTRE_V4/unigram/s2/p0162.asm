.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
sbb rdi, rcx
sub rbx, 101
imul bl
sub rsi, rsi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
add cl, -106 # instrumentation
cmovno rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
sub bl, 56
sub bl, bl
dec di
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
bts ebx, ebx
sub dil, 35
or bl, -80
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
cmovbe rdi, rcx
mov eax, edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
mul cx
and cl, al
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], eax
cmovnbe rax, rsi
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
xor dx, cx
cmovns ecx, edx
test bl, cl
or bx, -33
cmp al, -1
add dil, -84
adc cx, 27
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
adc cx, 57
movsx rax, bx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and dx, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
