.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
or al, -57
xor rcx, 40
not dil
jmp .bb_0.1
.bb_0.1:
mul edi
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rdi, rsi
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
test al, bl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
