.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
sbb ebx, 10
bts rax, rdx
xchg cl, dl
setb dl
add rax, 6
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
add al, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
add bl, -94 # instrumentation
or dil, bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
sbb dl, bl
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
