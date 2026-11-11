.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, edi
btr cx, di
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
dec di
lea edx, qword ptr [rdi + rbx]
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
cmovnp bx, di
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dx, 1 # instrumentation
dec rcx
setz sil
lea esi, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
