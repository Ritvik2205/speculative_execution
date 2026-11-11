.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, bl
and rax, -636362975
xor al, 9
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
and bl, dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 80
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
