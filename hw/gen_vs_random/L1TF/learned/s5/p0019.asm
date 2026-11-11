.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
cmovno cx, di
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
not sil
test al, -82
and dil, 58
test bl, 45
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
