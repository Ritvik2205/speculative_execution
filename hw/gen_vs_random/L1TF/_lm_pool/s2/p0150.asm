.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
cmovnle rax, rsi
lea rdx, qword ptr [rcx + rax + 5]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
jmp .bb_0.1
.bb_0.1:
add dl, -1
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rcx, rdi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
