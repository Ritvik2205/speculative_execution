.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
mov rdi, rcx
lea ax, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmovnz rsi, rdx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb di, 12
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 15
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 6
not rdx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add al, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
add dl, 35 # instrumentation
cmovnz rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
add cl, 22 # instrumentation
cmovns rdi, rdx
bswap rdx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
