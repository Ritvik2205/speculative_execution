.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
or al, bl
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or rdx, -109
test al, 91
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test al, dil
xor sil, dil
test rsi, 45
and esi, 46
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
xor al, sil
and dil, -62
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
