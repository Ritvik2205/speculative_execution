.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, 27
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
add al, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
or rbx, 22
lea eax, qword ptr [rdx + rax + 17]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
dec al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
cmovs di, cx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
setno bl
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
