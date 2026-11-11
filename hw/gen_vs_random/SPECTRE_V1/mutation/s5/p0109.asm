.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
sbb ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt edi, 121
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
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rdx + rdi + 19302]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
lea ax, qword ptr [rdx + rcx + 43552]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
