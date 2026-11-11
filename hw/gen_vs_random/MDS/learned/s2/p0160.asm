.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
btr edx, esi
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or al, bl
not al
and dil, dil
xor al, 9
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
or dx, 125
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
