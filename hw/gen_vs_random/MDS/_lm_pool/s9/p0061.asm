.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
test bl, al
test dil, 46
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
xor al, 122
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or sil, cl
xor bl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
