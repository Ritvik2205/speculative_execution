.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
or dil, -41
xor rsi, -117
or dl, 85
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test esi, 1857129931
xor bl, -27
and dl, dl
test dl, sil
and al, bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and dl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
