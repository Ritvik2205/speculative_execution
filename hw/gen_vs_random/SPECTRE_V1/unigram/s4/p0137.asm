.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
seto dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
cmovs rsi, rbx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
imul dl
add al, -53 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 9
add al, 3
sbb sil, al
cmovle cx, ax
add cl, 36 # instrumentation
sub rax, rax
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
