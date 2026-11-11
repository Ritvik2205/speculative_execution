.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
test rdi, rcx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
add bl, al
and dil, -82
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
or al, cl
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
