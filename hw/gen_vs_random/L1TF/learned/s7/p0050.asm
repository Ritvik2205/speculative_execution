.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 71
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
inc al
and dil, 58
and al, dil
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, dl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or rax, 699028911
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
