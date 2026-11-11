.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add cl, -56 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
add cl, 69 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
mul dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 69
xor ebx, edi
adc rdi, 67
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovp bx, di
xor dl, 71
add dil, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
