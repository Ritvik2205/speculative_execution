.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and al, dl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
sub bl, cl
add al, 28 # instrumentation
setnz al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
dec dl
xor cx, di
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
