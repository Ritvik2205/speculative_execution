.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
cmp edi, 10
setns al
add bl, 36 # instrumentation
setnl cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt ax, si
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
add dl, -6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
lea rdx, qword ptr [rax]
adc dl, 90
mul dil
movzx ebx, dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
