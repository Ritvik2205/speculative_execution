.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
sbb al, 49
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
bswap rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
setns al
movsx cx, sil
xor rsi, rbx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edx, 105
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 90
add cl, cl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
inc sil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
