.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rcx + 24]
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rbx, 10
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 67
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 20
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 50
test dil, dl
lea rdx, qword ptr [rdx]
add bl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
