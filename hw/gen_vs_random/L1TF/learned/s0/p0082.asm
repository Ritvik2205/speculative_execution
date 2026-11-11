.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
sub sil, -99
add sil, -61
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
test rsi, 493258429
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 100
add al, cl
sbb cl, al
jmp .bb_0.1
.bb_0.1:
setle al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
