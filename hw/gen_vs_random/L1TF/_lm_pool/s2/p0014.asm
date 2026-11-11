.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
xor bl, 38
and bx, 89
or al, -2
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 55
jmp .bb_0.2
.bb_0.2:
or cl, sil
jmp .bb_0.3
.bb_0.3:
test rsi, rax
not al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and sil, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
