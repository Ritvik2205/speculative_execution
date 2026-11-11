.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -23
cmovle rax, rdx
or si, 99
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
adc dil, 72
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
adc dil, 29
sets sil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
adc sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
