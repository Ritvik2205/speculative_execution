.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
xor bl, -102
and sil, bl
or al, al
jmp .bb_0.1
.bb_0.1:
or ebx, esi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test al, al
jmp .bb_0.2
.bb_0.2:
test al, bl
jmp .bb_0.3
.bb_0.3:
xor ax, 31969
test bl, 65
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
