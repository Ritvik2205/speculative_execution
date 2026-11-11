.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
setno dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb al, dil
jmp .bb_0.1
.bb_0.1:
and sil, dil
and al, dl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
