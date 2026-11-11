.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, 729805876
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmovnbe rbx, rdi
movsx si, al
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
lea di, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add cl, 22 # instrumentation
cmovns rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
dec dl
setp dil
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
