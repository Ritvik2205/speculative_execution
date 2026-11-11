.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, rax
test edi, ebx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
add al, 104 # instrumentation
mov eax, 18
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
adc bx, di
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
test cl, cl
mov rax, rcx
lea di, qword ptr [rsi + rdi + 26]
xor bl, al
test cl, dl
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
