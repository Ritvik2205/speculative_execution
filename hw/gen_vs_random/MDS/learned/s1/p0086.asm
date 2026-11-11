.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and al, 49
xor dil, al
test bl, -14
and dl, -73
xor dil, dl
xor rbx, 89
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 11
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
