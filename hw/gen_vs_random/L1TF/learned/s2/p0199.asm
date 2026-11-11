.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and edi, 47
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 49
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
xor al, bl
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
