.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
xor bx, 30
test eax, 26
and dl, 11
add sil, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rcx + rsi + 68]
setnp bl
adc bx, di
setnl sil
cmp dl, bl
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 75
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
cmovo esi, esi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
