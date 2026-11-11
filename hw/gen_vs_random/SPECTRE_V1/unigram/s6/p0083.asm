.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dil
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
add dil, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 90
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
btr si, 50
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
add bl, al
adc rsi, 110
loope .bb_0.1
jmp .exit_0
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
test ax, bx
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
