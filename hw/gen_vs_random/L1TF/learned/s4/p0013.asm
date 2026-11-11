.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 49
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rbx
cmp al, 56
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
test dl, -37
cmp cl, -89
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
test dil, -126
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
