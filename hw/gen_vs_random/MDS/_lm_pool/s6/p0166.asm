.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
or dl, bl
test bl, cl
or si, -12
xor dx, 25
test al, -7
xor al, 9
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
xor al, -26
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor bl, -27
or dil, al
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
