.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 28 # instrumentation
setnz al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
dec dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor cx, di
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
cmovns rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
