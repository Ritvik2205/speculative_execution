.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and ax, 23118
setz dl
and sil, 52
lea rbx, qword ptr [rdi + rdi + 63323]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovnb rdx, rsi
lea si, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
cmovle rdx, rsi
mul dil
add cl, -27 # instrumentation
setle cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
jmp .bb_0.2
.bb_0.2:
bt edi, 134
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor eax, 55
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 19 # instrumentation
setnz bl
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
