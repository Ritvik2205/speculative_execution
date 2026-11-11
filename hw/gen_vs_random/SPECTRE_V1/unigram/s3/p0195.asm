.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor edi, 84
bts rdx, rcx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
imul di, dx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 53
cmp bl, sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
mov bl, bl
add dl, 6 # instrumentation
adc rcx, 95
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
cwd
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
