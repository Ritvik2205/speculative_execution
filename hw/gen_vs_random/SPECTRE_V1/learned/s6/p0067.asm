.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 19
add al, 10
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
xchg rdi, rax
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 97
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor al, bl
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
