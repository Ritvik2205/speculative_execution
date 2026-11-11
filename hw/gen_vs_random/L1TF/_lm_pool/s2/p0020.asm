.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
xor bl, dil
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
or al, dil
cmovnz rbx, rax
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
cmp al, -119
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
