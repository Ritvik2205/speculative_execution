.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
xor bx, 75
and al, -54
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or al, 30
or al, 54
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and al, bl
and bl, 68
or dil, sil
test cl, dl
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
