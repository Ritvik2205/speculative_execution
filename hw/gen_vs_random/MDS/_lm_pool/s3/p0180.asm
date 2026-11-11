.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
xor al, -4
btr ax, di
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
jmp .bb_0.1
.bb_0.1:
or ecx, esi
or al, bl
or cx, 39
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test sil, dil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
