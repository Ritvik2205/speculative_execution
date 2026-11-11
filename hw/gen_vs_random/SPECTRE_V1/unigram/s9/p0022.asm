.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
add dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
cmovo rcx, rax
xor dl, 71
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edx, 105
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
mov dl, al
mul dl
cmp dil, bl
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
add sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
