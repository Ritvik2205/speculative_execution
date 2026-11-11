.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
not dil
jmp .bb_0.1
.bb_0.1:
movzx edx, dx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
