.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
lea rcx, qword ptr [rsi + rcx + 155]
cmp cl, -89
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
sub dil, sil
add sil, dl
cmovns cx, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
xor bl, dl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
cmovl si, cx
test si, si
imul ax
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
