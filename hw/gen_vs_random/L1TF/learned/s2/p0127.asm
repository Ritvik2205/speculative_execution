.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, si
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
btc cx, dx
lea rax, qword ptr [rdx + rdi]
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
