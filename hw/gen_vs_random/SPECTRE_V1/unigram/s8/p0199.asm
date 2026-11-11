.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, dil
lea ax, qword ptr [rax]
add dil, 40 # instrumentation
btc rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
add dl, 52 # instrumentation
sets dl
cmovs si, ax
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmovs rax, rax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and sil, 11
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
mov dil, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
