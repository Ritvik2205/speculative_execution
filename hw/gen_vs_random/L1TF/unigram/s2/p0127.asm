.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -6 # instrumentation
cmovnb esi, eax
neg al
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
cmovno rax, rcx
setp cl
setl dl
mov al, dl
add cl, -49 # instrumentation
adc cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
cmovnbe rax, rsi
cmovle rax, rsi
or ecx, edx
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
