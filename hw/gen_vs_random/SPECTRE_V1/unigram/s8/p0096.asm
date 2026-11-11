.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 1657596343
lea edx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
movzx edi, cx
movsx rsi, dx
add dil, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
setno cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 99
lea si, qword ptr [rcx]
sbb ebx, 40
add cl, -53 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
add al, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
