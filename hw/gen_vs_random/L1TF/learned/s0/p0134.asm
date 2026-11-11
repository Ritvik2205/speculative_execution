.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
xor bx, 3
lea rsi, qword ptr [rcx + rax + 36]
and dx, 20
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 46
lea edi, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
