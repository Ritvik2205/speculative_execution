.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test rsi, 58
or cl, cl
and sil, -9
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
or sil, dl
and sil, -56
test al, 66
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dl, -89
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
or ax, -6817
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
