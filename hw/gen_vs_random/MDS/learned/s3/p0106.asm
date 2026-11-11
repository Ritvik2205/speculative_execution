.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
not al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
test dl, -95
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor al, -26
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and cx, -2
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
