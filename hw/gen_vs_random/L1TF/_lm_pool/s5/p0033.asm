.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 89
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb dx, 19
bt eax, edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 42
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
