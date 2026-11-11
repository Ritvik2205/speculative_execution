.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
xor si, -50
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
lea cx, qword ptr [rsi + rbx + 33]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
btr ecx, 74
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
