.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
imul al
lea cx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, 109 # instrumentation
adc di, 68
lea edx, qword ptr [rdi + rdi]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmovnp rdi, rcx
setno cl
add bl, 68
cmp al, -119
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
