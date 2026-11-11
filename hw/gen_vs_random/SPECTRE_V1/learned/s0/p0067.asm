.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 98
add al, -109
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or al, 100
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
test al, -99
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub al, dil
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
