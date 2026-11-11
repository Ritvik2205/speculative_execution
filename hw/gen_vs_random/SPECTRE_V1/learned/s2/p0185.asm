.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and dl, sil
mov al, cl
inc eax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and ax, -13240
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
