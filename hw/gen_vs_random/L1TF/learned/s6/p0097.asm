.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 7
test al, -84
and dil, dil
cmovnle rdx, rbx
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test bl, 12
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
jmp .bb_0.3
.bb_0.3:
cmovle rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
