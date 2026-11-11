.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb bl
mov ecx, -1856082135
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
setnbe al
cmovz si, di
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
not al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
xchg bl, sil
add dil, 88
dec cl
setbe al
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
cmovnle rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
