.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and cl, -19
jmp .bb_0.1
.bb_0.1:
and dil, 125
xor cl, bl
and eax, -829294476
xor bx, 14
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
xor rcx, 71
xor dl, cl
xor rcx, 71
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
or sil, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
