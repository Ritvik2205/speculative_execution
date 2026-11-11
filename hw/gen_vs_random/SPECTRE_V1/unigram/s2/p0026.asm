.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
cmovno rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, rdx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
lea edx, qword ptr [rbx]
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
movzx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
