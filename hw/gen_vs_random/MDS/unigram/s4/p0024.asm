.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
bt esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
bts rdx, rdi
and cl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
cmovz rcx, rcx
and sil, cl
xor edi, 97
test dl, dil
cmovbe ax, cx
btr rbx, 63
or dil, dl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
test rax, 1214712583
cmovl rcx, rax
and ecx, -104
btc rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
cmovns rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
