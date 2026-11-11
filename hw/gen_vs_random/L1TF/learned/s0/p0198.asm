.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
imul al
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub dl, -78
jmp .bb_0.2
.bb_0.2:
cmovnp rbx, rdi
test dl, 84
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 7
add bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
