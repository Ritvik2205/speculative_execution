.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
or cl, dl
xor ecx, 8
or cl, 119
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and si, -121
test al, cl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and cl, 79
test edx, -1561252782
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test al, -81
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test al, 127
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
