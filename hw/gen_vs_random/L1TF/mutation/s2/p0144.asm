.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
add rax, 909978580
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
sbb rax, 1153316263
dec dl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
btr edx, 7
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
cmp esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
