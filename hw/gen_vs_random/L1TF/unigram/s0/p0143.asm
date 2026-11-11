.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi]
xor bl, -6
setnle cl
add cl, 102 # instrumentation
sbb cx, dx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovz edi, edx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
neg sil
lea esi, qword ptr [rax]
bt eax, 45
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 57
inc dil
xchg edx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
btc cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
