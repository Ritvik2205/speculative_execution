.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ebx
setno bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 44
cmovs rdx, rdx
sub sil, dil
test bl, -8
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dil
lea di, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
adc dil, 58
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
