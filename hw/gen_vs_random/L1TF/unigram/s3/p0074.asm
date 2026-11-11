.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
imul rsi, rdi
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
setp bl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rsi
sub edx, 74
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 15
or dx, -126
add cl, -38 # instrumentation
setbe cl
add cl, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
lea edi, qword ptr [rdi + rdx + 98]
add bl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
