.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
or al, sil
or al, 74
test cl, -86
xor al, 9
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
bt di, ax
and esi, 81
xor al, 34
xor al, 122
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 94
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
