.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
add cl, -20
lea dx, qword ptr [rdi]
or dl, bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 46
add dil, bl
jmp .bb_0.3
.bb_0.3:
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
