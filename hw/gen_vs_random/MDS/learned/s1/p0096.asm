.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
xor cl, -13
test cl, bl
and al, bl
test rsi, 62
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor al, 99
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or cl, dil
test rax, -363019044
xor al, cl
and dx, 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and sil, -69
or bl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
