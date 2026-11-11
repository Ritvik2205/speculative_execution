.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
mov sil, sil
cmovnbe rdx, rbx
setnz cl
mov sil, bl
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs ax, dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
setno sil
and dl, dl
movzx ax, cl
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
