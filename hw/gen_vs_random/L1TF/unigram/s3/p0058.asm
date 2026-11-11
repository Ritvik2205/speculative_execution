.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 82 # instrumentation
adc dil, bl
test sil, 29
imul rdx, rbx
setb cl
lea rsi, qword ptr [rcx]
cmovns edx, ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
or sil, -44
add bl, 108 # instrumentation
setl bl
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
and rsi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rsi]
lea bx, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 16
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
