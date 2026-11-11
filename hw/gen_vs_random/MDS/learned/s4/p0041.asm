.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and al, 87
test al, -81
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and dl, dl
and al, dil
xor eax, 1640090871
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
jmp .bb_0.2
.bb_0.2:
xor ax, 31969
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
