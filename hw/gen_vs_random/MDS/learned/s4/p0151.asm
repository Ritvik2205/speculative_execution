.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
not cl
test al, -81
test cl, sil
or sil, -78
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
xor bl, dl
test ebx, -2015966884
test eax, 1729060510
or sil, -78
not bl
or al, 24
not al
bt si, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and ecx, -104
xor rbx, 89
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
