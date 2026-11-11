.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rsi + 22]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and dil, -22
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
