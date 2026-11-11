.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
xor al, 55
xor al, sil
xor cl, 24
bts rbx, 115
or al, -17
test sil, dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and al, 49
xor al, -4
btc edx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
