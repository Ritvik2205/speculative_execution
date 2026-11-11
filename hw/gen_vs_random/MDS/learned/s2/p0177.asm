.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
cmovp si, di
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor ax, -4010
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or al, -75
test eax, 424329527
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
