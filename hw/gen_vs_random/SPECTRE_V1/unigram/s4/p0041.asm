.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
add al, -125 # instrumentation
cmovb eax, ecx
add dl, 92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
lea dx, qword ptr [rdi + rbx + 82]
btc rbx, 195
lea rax, qword ptr [rax + rbx + 91]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 24
lea cx, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
imul bl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
xor al, -64
or di, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
