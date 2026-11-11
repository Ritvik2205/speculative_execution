.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add dl, dl
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rax + rcx + 30]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
cmovno rbx, rdx
sbb dil, sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
sbb dl, sil
sbb bl, dl
jmp .bb_0.3
.bb_0.3:
xor al, dl
sub rax, -15
xor dl, 64
and rcx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
