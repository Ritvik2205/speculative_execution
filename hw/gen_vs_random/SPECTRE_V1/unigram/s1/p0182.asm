.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
lea ebx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
lea rdx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
movsx rcx, ax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
mov dl, 97
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovnl rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
