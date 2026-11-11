.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
cmovo ebx, ebx
or bl, cl
setbe cl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
xor dl, bl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 112 # instrumentation
setnbe dl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
