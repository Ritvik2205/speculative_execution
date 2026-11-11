.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test eax, 298249463
test cl, dil
test bl, dl
and al, 14
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor eax, 984871847
test bl, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
btc rdx, 88
or al, cl
and dil, dl
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
