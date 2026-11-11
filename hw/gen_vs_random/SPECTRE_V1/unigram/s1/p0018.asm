.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dil
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 17
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle ax, ax
add al, -109
setns bl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rbx]
add al, 123 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
xor al, al
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
setnz cl
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
