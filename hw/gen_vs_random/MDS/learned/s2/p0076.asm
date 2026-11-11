.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor sil, 110
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
xor cl, dl
or dil, -71
and al, sil
jmp .bb_0.1
.bb_0.1:
xor al, 115
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test dil, al
or cl, dl
xor al, cl
jmp .bb_0.2
.bb_0.2:
test rax, -1579405415
or rcx, 54
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
