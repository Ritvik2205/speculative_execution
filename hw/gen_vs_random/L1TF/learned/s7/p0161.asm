.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and sil, sil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmp sil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 32
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and bl, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor bl, -5
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
