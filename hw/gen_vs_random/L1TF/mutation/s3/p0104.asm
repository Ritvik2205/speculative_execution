.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 287965578
bswap edi
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
setb dil
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setnbe cl
jmp .bb_0.1
.bb_0.1:
xor rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
cmovs rsi, rdi
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
cmovnp di, bx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
imul edx, esi, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
