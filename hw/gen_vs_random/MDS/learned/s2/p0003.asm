.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle ecx, ecx
test dil, dl
jmp .bb_0.1
.bb_0.1:
btc di, 164
test dl, sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 84
xor al, bl
xor dl, cl
or cl, 39
or al, sil
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
