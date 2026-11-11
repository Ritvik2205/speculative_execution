.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and dl, 17
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
bt esi, 51
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 27
add dil, 125 # instrumentation
adc dil, cl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
btc ebx, 29
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 47
add bl, 112 # instrumentation
setnbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
