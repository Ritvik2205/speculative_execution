.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor ebx, 6
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or dl, -21
test dil, 46
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and cl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test al, dil
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
