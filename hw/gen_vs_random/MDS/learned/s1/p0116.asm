.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
or dl, dil
or ax, 16560
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor dil, -70
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
not dl
test sil, -55
btc bx, 58
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
