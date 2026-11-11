.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor cl, -13
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or dl, dl
or sil, dil
test al, al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or dil, -78
or al, -75
and sil, al
xor sil, 110
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or al, -17
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
