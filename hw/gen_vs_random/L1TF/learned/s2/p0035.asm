.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
sbb cl, al
lea rbx, qword ptr [rdx + rcx + 71]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
or al, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 73
sub dl, 105
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
