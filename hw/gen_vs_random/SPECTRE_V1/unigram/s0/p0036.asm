.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
add al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
add ax, dx
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 46
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
add dl, 117 # instrumentation
sbb rbx, rcx
sbb bl, al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], si
add dl, 121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
