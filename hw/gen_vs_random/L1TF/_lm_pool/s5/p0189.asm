.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and al, -68
add dil, 88
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 30
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add eax, -1
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
