.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, -1134698714
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea dx, qword ptr [rsi + rbx + 60147]
cmovle rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
cbw
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 94
add bl, 40 # instrumentation
cmovp rcx, rbx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
bts rbx, 140
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
