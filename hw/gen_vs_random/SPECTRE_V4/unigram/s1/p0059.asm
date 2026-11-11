.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 111
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
or eax, edi
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 14
xchg esi, eax
cmp si, di
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 66
imul eax, ebx, 17
cmovp ebx, ebx
neg eax
cmovnb ebx, eax
add dl, cl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovb esi, eax
cmovnbe rax, rcx
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 83
sub ebx, 7
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
cmp rax, 2115020203
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
movsx edi, bx
cmovz rdx, rax
mov rbx, rax
xor bl, 93
adc dx, dx
adc dl, cl
cmovnbe rax, rax
cmp bx, ax
cmovnp rsi, rdx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
bts ecx, 51
xor cl, -85
cmovz ebx, edx
adc cl, cl
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
cmovnb di, di
sub ecx, edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
test di, 24
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
