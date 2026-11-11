.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
setno al
add cl, -20
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
or cl, 105
add al, -46
test bl, 45
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
