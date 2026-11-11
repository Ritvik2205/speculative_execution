.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, ecx
sub rdx, 82
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
lea rsi, qword ptr [rcx + rbx]
cmp dl, -93
xor bl, cl
test eax, 645518295
test dl, dl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
