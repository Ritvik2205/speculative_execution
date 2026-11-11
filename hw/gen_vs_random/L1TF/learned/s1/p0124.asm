.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovb di, si
sub sil, -99
test di, 55
sub al, -75
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
cmp si, 24
mov dil, 96
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdi
btr edi, edx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
add bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
