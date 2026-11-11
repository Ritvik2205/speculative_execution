.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -23 # instrumentation
cmovl si, di
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
lea eax, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 90
add al, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
setp dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 35
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 57
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 21
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
