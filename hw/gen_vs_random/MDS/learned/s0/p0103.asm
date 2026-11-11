.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or rax, 1020005579
or ax, -6817
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dl, dl
jmp .bb_0.1
.bb_0.1:
cmovnle edx, eax
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and ax, 31082
jmp .bb_0.3
.bb_0.3:
test sil, 17
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
