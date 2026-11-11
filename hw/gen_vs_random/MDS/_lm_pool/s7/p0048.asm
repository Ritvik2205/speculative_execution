.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
test al, -81
test al, -81
test bl, dl
not cl
or rbx, -77
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and sil, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor al, cl
test al, bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
xor sil, -15
xor dil, 81
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
