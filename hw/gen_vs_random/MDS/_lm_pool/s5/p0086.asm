.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and dil, dil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
test dil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
btr di, cx
jmp .bb_0.1
.bb_0.1:
xor al, -19
and al, -54
test eax, 158941032
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
