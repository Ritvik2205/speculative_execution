.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
lea cx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
add bl, -45 # instrumentation
cmovs rcx, rcx
imul al
jmp .bb_0.1
.bb_0.1:
setno cl
add al, 109 # instrumentation
adc di, 68
cmovnp rdi, rcx
lea edx, qword ptr [rdi + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
add bl, 68
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
