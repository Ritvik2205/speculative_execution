.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
and rax, 363226538
movzx rax, dil
xchg cl, dl
jmp .bb_0.1
.bb_0.1:
sub bl, dl
bt ecx, 4
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
or dl, 92
movzx eax, al
adc dil, 34
xor edi, 48
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovo ebx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
test rax, -991273825
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
sub esi, 62
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
