.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
not ecx
and dil, sil
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
cmp al, al
btc esi, ebx
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi + rcx]
or di, 6
sbb dl, 77
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp cl, -71
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
test esi, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
