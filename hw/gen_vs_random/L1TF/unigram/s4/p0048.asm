.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dx, 14
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 25
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
lea rdi, qword ptr [rcx + rbx]
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
lea rdi, qword ptr [rcx]
not bl
jmp .bb_0.1
.bb_0.1:
cmovns rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
lea di, qword ptr [rdi]
sub rbx, 14
add al, -117 # instrumentation
setp al
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
btr ebx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
