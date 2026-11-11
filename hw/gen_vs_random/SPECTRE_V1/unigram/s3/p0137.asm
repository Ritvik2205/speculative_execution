.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
add dl, 71 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
test sil, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
inc dl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 49
and rdx, rdx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
cmovbe cx, si
sub bl, bl
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
