.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dil, al
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 40
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor cl, 98
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
