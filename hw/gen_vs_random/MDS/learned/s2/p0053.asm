.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or si, 94
test al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or dl, -31
jmp .bb_0.1
.bb_0.1:
or ax, 127
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
jmp .bb_0.2
.bb_0.2:
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
