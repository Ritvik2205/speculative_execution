.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
sbb edx, 23
and sil, al
setnbe dl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rsi
lea ebx, qword ptr [rax + rax + 51]
add al, 121 # instrumentation
setnb dil
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
inc ebx
or rcx, 87
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
sbb dil, cl
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
