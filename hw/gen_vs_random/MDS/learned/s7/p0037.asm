.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and sil, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 18
and sil, 74
xor al, 99
or sil, -49
or dil, -78
and dl, -73
xor al, 55
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
