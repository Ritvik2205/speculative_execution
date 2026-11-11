.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
xchg eax, ecx
or sil, bl
not cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
add al, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test cl, 51
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
