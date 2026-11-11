.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe cl
or eax, 287965578
bswap edi
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setb dil
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnp di, bx
cmovs rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
xor rax, rdx
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
imul edx, esi, -121
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
