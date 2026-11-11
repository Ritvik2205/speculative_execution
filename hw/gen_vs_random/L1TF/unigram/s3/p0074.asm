.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
btc eax, esi
test sil, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
cmovnz cx, si
add al, 36 # instrumentation
lea ebx, qword ptr [rbx + rsi + 18]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
lea rax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
