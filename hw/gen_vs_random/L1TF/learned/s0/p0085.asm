.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and dl, dl
xor al, 45
xor ecx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
