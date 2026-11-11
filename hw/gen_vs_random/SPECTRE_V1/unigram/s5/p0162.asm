.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
lea rdi, qword ptr [rax]
lea rdi, qword ptr [rdi + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
adc al, al
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
btc rbx, rdx
cmovno dx, si
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
