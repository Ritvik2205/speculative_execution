.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 75
xor cl, 83
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test al, dil
xor ax, 23633
xor rdx, -59
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and al, 35
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 11
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and bl, 68
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
