.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
not al
xor al, bl
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor al, 122
jmp .bb_0.1
.bb_0.1:
and dil, al
and al, al
jmp .bb_0.2
.bb_0.2:
and ax, si
and bl, al
and dl, dl
and bl, 68
sub al, 68
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
