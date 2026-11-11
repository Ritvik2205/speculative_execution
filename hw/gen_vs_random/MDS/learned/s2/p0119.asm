.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
or ebx, -104
test bl, -9
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor dl, cl
or bx, 69
or bx, 92
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
