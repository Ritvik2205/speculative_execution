.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
adc ax, di
add ecx, 75
or di, 43
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
dec rdi
sbb rdi, 5
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovnz cx, bx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 93
sbb rax, 183833426
test ebx, -595096626
xor dl, bl
test ax, -5170
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
