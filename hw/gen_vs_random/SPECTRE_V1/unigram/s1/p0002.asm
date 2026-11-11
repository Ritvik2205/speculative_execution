.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdx + rdx]
add cl, 0 # instrumentation
adc al, dil
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 4
add al, 19 # instrumentation
setnz al
bt edx, esi
setl sil
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
cmp dil, -58
lea rax, qword ptr [rbx + rdx + 34714]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
setbe cl
btr rbx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
