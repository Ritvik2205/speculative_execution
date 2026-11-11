.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and cl, 74
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
add cl, dil
lea di, qword ptr [rsi + rdx + 97]
lea esi, qword ptr [rcx + rbx + 93]
test sil, -101
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe eax, edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
add dl, 35 # instrumentation
cmovnz rdi, rcx
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
bts rbx, 140
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
