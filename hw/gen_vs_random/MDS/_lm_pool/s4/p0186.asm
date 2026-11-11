.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, 91
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 23
or al, -61
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or dx, 125
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or bl, 100
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
or al, -75
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
