.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
sub bl, 84
add al, 118 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 39
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
add dl, 50
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
setnb al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
add cl, -84 # instrumentation
xchg rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
