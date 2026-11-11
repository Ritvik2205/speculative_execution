.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sub al, dil
add al, -65
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
sub dl, -48
or ax, -114
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test sil, 47
test al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
