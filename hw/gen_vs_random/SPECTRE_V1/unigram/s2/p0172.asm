.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
add dl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
imul cl
movzx ax, dil
xor sil, -33
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
lea dx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
cmovle edx, ebx
movzx di, al
add rax, 977059290
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
