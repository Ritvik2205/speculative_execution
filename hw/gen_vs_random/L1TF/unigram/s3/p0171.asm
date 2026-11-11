.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, rbx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
xor dl, 64
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and bl, dl
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
bswap rdi
mul esi
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
cmovnz ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 93
cmp dl, -93
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
