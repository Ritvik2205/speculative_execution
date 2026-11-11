.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor al, 8
and di, 91
or bl, -52
test dil, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and edi, 23
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
