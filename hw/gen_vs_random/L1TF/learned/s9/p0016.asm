.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 87
cmovs ax, si
imul al
and cx, -79
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
sbb dil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
