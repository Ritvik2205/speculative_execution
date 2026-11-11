.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
or al, 25
btr ecx, eax
and eax, 366961170
xor dl, al
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or cl, sil
xor cl, sil
bt esi, ecx
test si, 33
test edx, -372470678
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
test bl, -14
not al
jmp .bb_0.1
.bb_0.1:
and rax, -1701787862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
