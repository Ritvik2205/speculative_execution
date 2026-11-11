.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 70
add dl, 125 # instrumentation
cmovbe rax, rax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
add cl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
add dl, 76 # instrumentation
sbb bx, 19
test cx, 95
lea si, qword ptr [rsi + rbx + 96]
add bl, 98 # instrumentation
inc bl
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
cmovns rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
