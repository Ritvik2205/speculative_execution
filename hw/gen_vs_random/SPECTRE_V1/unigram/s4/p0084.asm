.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, bl
add al, -106
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
add dl, -6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
mov sil, al
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
mov dl, sil
or al, bl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 71
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
