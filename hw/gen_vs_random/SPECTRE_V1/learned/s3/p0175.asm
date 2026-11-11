.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 1503210561
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
cmovns rdi, rax
dec rdx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 78
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
lea di, qword ptr [rdx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 85
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub dil, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
