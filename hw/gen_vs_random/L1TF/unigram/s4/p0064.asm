.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
bts bx, 64
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
adc dl, 87
xor al, 14
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
dec cx
xor dil, al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
test eax, 1730342416
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
adc eax, 551972257
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
