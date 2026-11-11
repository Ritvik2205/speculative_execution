.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 8
xchg dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and al, dl
setnle bl
and rdi, 83
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 36
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovb rcx, rax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
