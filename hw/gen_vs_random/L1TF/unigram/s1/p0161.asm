.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
setb sil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
setns dil
dec ax
xor edi, esi
add bl, 115 # instrumentation
setz dl
bts eax, 232
and dl, al
jmp .bb_0.1
.bb_0.1:
sub ecx, 30
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
cmp dl, cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
