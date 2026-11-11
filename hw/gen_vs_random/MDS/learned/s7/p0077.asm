.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or sil, -49
test bl, sil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
test bl, dil
or sil, sil
jmp .bb_0.1
.bb_0.1:
test dil, cl
and bl, dl
bt bx, di
test al, 127
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
jmp .bb_0.3
.bb_0.3:
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
