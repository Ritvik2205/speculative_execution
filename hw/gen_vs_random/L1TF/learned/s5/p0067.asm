.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
jmp .bb_0.1
.bb_0.1:
or al, dl
or cx, 1
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test cl, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
