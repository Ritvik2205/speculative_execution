.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test bl, 65
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 33
xor bl, 67
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
not dl
and al, 106
and al, 84
and dil, dil
and cl, 79
jmp .bb_0.1
.bb_0.1:
bt bx, di
or cl, 30
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
