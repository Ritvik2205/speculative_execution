.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add sil, dl
setbe cl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and al, -54
cmovbe rax, rcx
sbb si, 74
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
sets al
setnb dil
bts rsi, 79
lea di, qword ptr [rsi + rdi + 70]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
