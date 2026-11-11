.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea dx, qword ptr [rax]
add dil, dil
add al, sil
cmovno edi, edi
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
sbb dil, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
add dl, -1
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
