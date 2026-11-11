.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or al, al
and al, sil
test rdi, 84
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
bts rdi, 130
xor cx, -18
jmp .bb_0.1
.bb_0.1:
or dl, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
xor dl, bl
or dil, 12
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
