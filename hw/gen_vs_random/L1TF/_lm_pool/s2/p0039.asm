.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 56
sub cl, 86
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
or ax, 11821
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xchg bl, al
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
add al, 65 # instrumentation
cmovo rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
