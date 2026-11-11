.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, 11
xor di, ax
test al, sil
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
xor al, 45
cmovo rbx, rax
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
xchg cl, bl
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
imul cx, ax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 58
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and sil, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
