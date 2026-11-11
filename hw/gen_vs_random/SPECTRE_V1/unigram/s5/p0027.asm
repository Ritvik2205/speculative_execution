.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
sbb ecx, 81
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
add bl, 97 # instrumentation
cmovnb bx, si
bts dx, 26
cwde
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
add dil, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
adc dl, cl
lea bx, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
