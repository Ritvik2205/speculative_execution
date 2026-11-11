.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rax, 1713273566
lea di, qword ptr [rcx + rdx + 72]
cmovs di, dx
and al, bl
lea rbx, qword ptr [rax + rcx + 33]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
