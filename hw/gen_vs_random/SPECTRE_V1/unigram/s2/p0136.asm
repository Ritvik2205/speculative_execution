.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rbx, 34
lea bx, qword ptr [rcx + rbx + 2101]
add al, -14 # instrumentation
lea bx, qword ptr [rsi + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdx + rbx]
and rsi, 95
btc si, bx
add al, 120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 89
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
adc bl, -73
sbb rbx, 80
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
