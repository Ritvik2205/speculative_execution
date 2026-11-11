.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
cmovb rbx, rax
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
cmovnb eax, edi
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
cmovnbe rdx, rcx
sub sil, cl
cmovnp ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
