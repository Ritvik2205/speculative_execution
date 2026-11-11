.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, sil
cmovb edi, eax
adc di, 80
or dil, -113
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
test al, bl
lea rbx, qword ptr [rdx]
xor cl, sil
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
add dl, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
add dl, -53 # instrumentation
dec di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
