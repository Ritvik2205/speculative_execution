.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
xor rax, -404206377
xor al, -4
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test sil, al
or esi, ecx
bt si, di
test eax, 158941032
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
btc ecx, 58
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
