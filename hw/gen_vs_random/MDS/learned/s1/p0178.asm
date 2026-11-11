.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or sil, -8
xor dx, 15
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
xor edi, -47
or cl, al
and dl, -33 # instrumentation
cmovns rsi, rsi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
xor al, -15
and sil, 65
sub cl, cl
bt edx, 69
sub ax, dx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 32
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
