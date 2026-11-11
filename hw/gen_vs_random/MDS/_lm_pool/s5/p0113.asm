.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
not dl
xor sil, bl
btr si, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 81
jmp .bb_0.1
.bb_0.1:
or dil, -78
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
xor al, 99
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
or sil, -78
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
