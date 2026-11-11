.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
not eax
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmp bl, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
add dl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
adc dl, -49
lea ecx, qword ptr [rdx]
cdq
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 45 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
cmovnbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
mov ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
