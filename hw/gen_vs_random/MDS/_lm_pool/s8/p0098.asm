.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
xor cx, -18
and cl, cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 14
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and bl, cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test al, 66
jmp .bb_0.1
.bb_0.1:
or dil, bl
and rcx, rdx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
