.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or di, bx
add rcx, rsi
adc bl, 89
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or si, bx
sbb rax, 183833426
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or dl, 56
dec dl
or dl, bl
or bl, dil
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
test bl, sil
cmovnb ax, ax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, 1880179600
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and bl, dl
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
