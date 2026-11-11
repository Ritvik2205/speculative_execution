.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
test dil, al
xor rsi, -117
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor cl, 24
xor rdi, -9
test eax, 343548072
test cl, 91
btr esi, ecx
test cl, 101
or al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and bl, al
test al, dil
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
