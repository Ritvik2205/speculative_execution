.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, bl
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 27
xor cl, 83
or dl, dil
cmovnbe esi, edx
test sil, -96
bts rsi, 205
xor bx, 6
test cl, -86
bt rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and cl, 122 # instrumentation
cmovl ebx, ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
or ebx, ebx
test si, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
