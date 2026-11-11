.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
test al, dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 107
or bl, bl
test al, 91
xor al, dl
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
