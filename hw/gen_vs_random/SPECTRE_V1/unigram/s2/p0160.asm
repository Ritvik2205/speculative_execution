.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 39
cmovb bx, bx
xor rsi, -124
cmovle rdx, rdi
mov rcx, rax
add bl, 40 # instrumentation
lea bx, qword ptr [rdi + rdi]
setno bl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
lea cx, qword ptr [rcx + rsi]
xor cx, 1
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
