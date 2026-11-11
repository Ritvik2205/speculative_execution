.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
xor dil, -42
xor eax, -885407671
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 4
jmp .bb_0.1
.bb_0.1:
or ax, -10161
xchg eax, ebx
jmp .bb_0.2
.bb_0.2:
add cl, 42 # instrumentation
lea eax, qword ptr [rcx + rax]
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
