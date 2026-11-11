.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
not sil
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and cl, cl
xor dl, 34
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
xor bl, -27
or al, 30
btr cx, di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and cl, cl
test sil, -55
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
