.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bt edx, ebx
jmp .bb_0.1
.bb_0.1:
test al, -70
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, -32
or al, -48
and rsi, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
