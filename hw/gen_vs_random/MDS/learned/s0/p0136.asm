.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
or sil, -78
bts rsi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
test al, 127
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and eax, 33
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
xor al, dil
test esi, 1857129931
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or al, -17
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or sil, cl
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
