.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 34
and dx, 3
or al, dl
xor dil, 124
jmp .bb_0.1
.bb_0.1:
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
or al, -17
and bl, dl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
