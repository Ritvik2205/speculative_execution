.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
btr esi, 37
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
cmp bx, -21
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
cmovnle ax, ax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
lea ax, qword ptr [rax + rdx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
