.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
add al, -125 # instrumentation
cmovb eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
bt ecx, esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 29
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
cbw
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cwde
lea rbx, qword ptr [rax + rcx + 88]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
btc rdi, 86
xor al, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
