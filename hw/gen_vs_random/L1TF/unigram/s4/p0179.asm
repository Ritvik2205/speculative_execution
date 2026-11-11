.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 37
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or bl, sil
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
lea edi, qword ptr [rbx]
neg al
dec esi
inc bl
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
or dx, 1 # instrumentation
dec rax
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
