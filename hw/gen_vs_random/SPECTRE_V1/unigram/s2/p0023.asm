.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rdi
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 50
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
test esi, 81
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
add cl, 41 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
