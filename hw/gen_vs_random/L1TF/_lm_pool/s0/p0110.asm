.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 39
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
bt ecx, edx
and rax, rcx
and cl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
