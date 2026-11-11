.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
lea eax, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
add dl, 110 # instrumentation
cmovb rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and sil, 11
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
lea rbx, qword ptr [rax + rdx + 66]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
sbb bl, 79
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
