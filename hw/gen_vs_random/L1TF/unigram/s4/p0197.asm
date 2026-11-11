.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
bts dx, 97
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or rcx, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
mov rbx, 70
sbb rcx, 42
setnl sil
xor cl, cl
add bl, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
add dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 15
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
