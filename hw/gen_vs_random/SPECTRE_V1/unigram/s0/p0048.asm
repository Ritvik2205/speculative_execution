.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
setnb bl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
test esi, eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test eax, 52
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
xor dil, cl
adc sil, dl
cmovle rbx, rsi
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 65
cwd
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
