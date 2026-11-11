.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 10
add bl, -9 # instrumentation
adc rbx, 85
inc rdx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovz ebx, esi
xchg edi, ecx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
xchg eax, esi
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
test rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
