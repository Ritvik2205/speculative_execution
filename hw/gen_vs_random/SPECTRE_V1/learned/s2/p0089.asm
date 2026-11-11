.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -2019837038
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, -120
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 65
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmp rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
sub di, 31
cmovp si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
