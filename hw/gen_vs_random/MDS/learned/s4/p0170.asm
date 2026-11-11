.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
btr esi, ecx
or bl, cl
test al, bl
and sil, -9
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
bts rcx, 39
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor sil, -15
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or bl, cl
and dil, -39
test cl, cl
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
