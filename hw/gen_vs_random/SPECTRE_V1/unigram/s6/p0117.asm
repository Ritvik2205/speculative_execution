.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
sbb dl, dl
test rbx, 84
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
setb dl
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and sil, sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor rdx, rdi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
xor rbx, -34
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
