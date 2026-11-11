.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or al, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
not bl
or al, dl
xor sil, al
or al, sil
and rax, -1701787862
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
xor dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor rcx, 71
jmp .bb_0.1
.bb_0.1:
or sil, -49
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
