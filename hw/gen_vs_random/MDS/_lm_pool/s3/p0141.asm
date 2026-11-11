.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 20
or al, 25
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
bt eax, esi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rdx, 29
jmp .bb_0.2
.bb_0.2:
test sil, 41
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and si, -121
test al, 22
or al, bl
and dx, 3
xor al, cl
and esi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
