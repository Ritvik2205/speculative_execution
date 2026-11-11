.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
sub sil, dl
lea eax, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
test al, 40
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmp bl, al
test al, 40
jmp .bb_0.2
.bb_0.2:
test al, bl
xor bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
