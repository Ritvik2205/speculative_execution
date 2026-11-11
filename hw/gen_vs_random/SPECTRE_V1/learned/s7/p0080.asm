.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
test bl, -8
add sil, 2
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 50
xor edi, 115
xchg sil, dil
cmp si, -11
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 32 # instrumentation
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
