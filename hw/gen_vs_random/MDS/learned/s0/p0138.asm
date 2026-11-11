.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or al, -17
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
test bl, -9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.1
.bb_0.1:
or al, sil
test dil, -80
and dx, 60
test bl, dl
and rax, 627810357
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or dil, -71
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor bl, 67
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
