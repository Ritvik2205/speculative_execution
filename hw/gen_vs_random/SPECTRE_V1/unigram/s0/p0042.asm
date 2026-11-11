.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
or al, dl
lea dx, qword ptr [rcx + rbx]
sbb al, al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
mov bl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and di, 24
lea bx, qword ptr [rsi + rax + 36]
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
btr di, 1
adc dl, 48
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
