.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
xor cl, dl
or al, cl
sub bl, dil
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 61
cmp al, cl
sub sil, sil
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
