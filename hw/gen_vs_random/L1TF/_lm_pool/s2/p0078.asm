.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 64
and di, 90
test al, -104
or al, dl
add cl, al
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
lea rsi, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 12
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
