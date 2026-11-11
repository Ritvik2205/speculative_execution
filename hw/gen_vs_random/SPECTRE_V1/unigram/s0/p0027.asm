.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
add dl, dil
lea si, qword ptr [rsi + rbx + 18]
cmovnp si, ax
add sil, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
sub sil, al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
setnb dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
cmp al, 62
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 83
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
