.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
xor eax, -105
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
