.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
cmp ax, 2764
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
btc bx, 168
add cx, 59
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnle edx, ebx
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and sil, 69
and edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
or bl, al
setnbe dil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
cmovbe eax, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
btr ecx, esi
xchg rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
