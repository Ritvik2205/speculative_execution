.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
btr ax, cx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
xor cl, -13
xor bl, dl
or al, 25
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test eax, -571234566
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
or bl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
