.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 25
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
setnl cl
sub ax, -3178
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
cmovz ax, si
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
