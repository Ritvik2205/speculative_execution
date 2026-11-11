.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
btc ebx, 29
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
btr rbx, 132
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], -122
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
test dl, bl
setnl dl
mov bl, dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
movsx ebx, bl
lea ecx, qword ptr [rdi + rsi + 7976]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
add eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
