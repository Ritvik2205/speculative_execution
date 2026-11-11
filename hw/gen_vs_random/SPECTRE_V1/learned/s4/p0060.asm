.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, 18
test dl, al
xor rax, 1636804787
sub al, 10
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
movsx ax, al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmovp ebx, edx
xor sil, 1
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
add al, 127 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
