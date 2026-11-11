.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
xor rdx, 8
or rbx, 98
add al, 127 # instrumentation
sets al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 94
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
add cl, 125 # instrumentation
adc cl, dl
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
setnbe al
dec bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
lea rdi, qword ptr [rdi]
btc rbx, 195
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
