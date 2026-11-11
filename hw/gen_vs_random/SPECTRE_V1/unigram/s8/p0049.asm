.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
movsx rcx, dx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
add dl, -73 # instrumentation
btr si, ax
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 91
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
btc rax, rdx
and rax, rdx
adc dil, 39
add bl, -76 # instrumentation
cmovnle dx, si
cmovbe rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
