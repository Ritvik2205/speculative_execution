.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
test cl, 101
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or dl, bl
and dl, -73
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
xor dil, 81
or sil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or cx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
