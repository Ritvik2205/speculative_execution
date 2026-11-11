.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
lea ebx, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
xor sil, al
or bl, -5
jmp .bb_0.1
.bb_0.1:
test bl, 84
and dl, al
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
test ecx, 64
and sil, 37
cmovs ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
