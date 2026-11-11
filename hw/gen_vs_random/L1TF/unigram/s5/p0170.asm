.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
not dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
xor eax, -69
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 73
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add al, 66 # instrumentation
cmovnp edi, edx
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
dec edx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb al, -50
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
add al, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
add cl, -98 # instrumentation
setp sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
