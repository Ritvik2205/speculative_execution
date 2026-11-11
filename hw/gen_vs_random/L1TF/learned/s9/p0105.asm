.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 39
btc eax, 220
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
not dil
and rax, 1163013815
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ax, 37
jmp .bb_0.3
.bb_0.3:
add bl, 68
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
jmp .bb_0.5
.bb_0.5:
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
