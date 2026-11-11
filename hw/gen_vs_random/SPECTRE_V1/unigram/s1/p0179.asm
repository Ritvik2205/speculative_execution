.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
setbe sil
setp sil
xor cl, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
adc di, 47
movzx esi, bl
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 39
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 35
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
