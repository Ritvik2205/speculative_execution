.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
add dl, cl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and cl, dl
lea eax, qword ptr [rcx + rcx + 78]
lea ax, qword ptr [rsi + rbx + 61]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -43 # instrumentation
adc di, 77
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
seto bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 10
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
