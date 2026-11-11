.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, ax
btr edx, ecx
test sil, bl
and rsi, 71
test bl, sil
not cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or cl, 6
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
