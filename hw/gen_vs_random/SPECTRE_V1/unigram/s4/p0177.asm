.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 54
sbb sil, dl
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
add cl, 103 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx eax, dl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
cmovle rbx, rsi
sbb dil, al
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
