.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
add al, 64 # instrumentation
cmovnz di, si
adc dl, -49
xor rdi, 55
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
bt esi, ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, cl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and ax, 21910
setb al
cmovle di, cx
mov ecx, edi
cmp dil, cl
lea rdx, qword ptr [rdx + rax]
adc bx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
