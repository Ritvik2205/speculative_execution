.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
sbb bl, -88
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor al, sil
bts dx, 39
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 32
cmp dl, -93
or ax, 11821
cmp dil, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
