.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
sbb al, 25
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
btr dx, 72
xor al, al
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
dec al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
add dl, 63 # instrumentation
cmovle di, dx
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
adc rsi, 23
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
