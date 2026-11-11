.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -29 # instrumentation
add sil, -70 # instrumentation
setnp sil
add dil, cl
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
add cl, -84 # instrumentation
lea ecx, qword ptr [rbx + rbx + 93]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
lea ax, qword ptr [rcx]
add dl, 52 # instrumentation
sets al
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
adc sil, sil
lea cx, qword ptr [rax + rdi + 24]
lea ax, qword ptr [rbx + rcx + 6]
lea edx, qword ptr [rax + rdx]
cmovnz cx, dx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
btr rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
