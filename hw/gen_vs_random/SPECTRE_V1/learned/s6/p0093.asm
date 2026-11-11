.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
cmp ecx, 62
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
sub bl, -6
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
