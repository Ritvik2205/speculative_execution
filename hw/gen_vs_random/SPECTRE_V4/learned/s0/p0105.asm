.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 76
mov dil, cl
test bl, cl
sub cl, al
add cl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
neg bl
test dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
xor dl, -66
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
or al, sil
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
