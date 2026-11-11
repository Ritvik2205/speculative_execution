.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
or rcx, 85
cmovz rdi, rcx
or rcx, rsi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
movsx ebx, al
cwde
or dx, 1 # instrumentation
dec rdx
add dl, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], dx
or cx, cx
cmp si, 71
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
setns cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
