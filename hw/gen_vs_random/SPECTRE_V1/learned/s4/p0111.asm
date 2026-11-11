.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
setno dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmovno edi, ebx
and dl, 36
bt rsi, rcx
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 51
imul rsi, rdx
xor si, 23
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovns rsi, rsi
sbb cl, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
