.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 70
sets cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
cmp cl, 3
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 100
xor rsi, -124
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
add sil, 36
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
cmovl esi, edi
xor rsi, -124
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dl, bl
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
