.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edi
setnbe cl
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setb dil
or eax, -62
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
imul edx, esi, -121
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
cmovnp di, bx
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
xor rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
cmovs rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
