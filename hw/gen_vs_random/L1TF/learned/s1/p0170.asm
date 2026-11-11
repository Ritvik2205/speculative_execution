.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
imul al
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor bl, bl
lea ebx, qword ptr [rbx + rdx + 54]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
or ax, -10161
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
