.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
test ecx, -1843375753
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
jmp .bb_0.1
.bb_0.1:
test rax, rsi
or al, 25
and dil, 125
bt bx, di
xor cl, 55
test rax, 1214712583
or cx, 39
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and dl, al
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
