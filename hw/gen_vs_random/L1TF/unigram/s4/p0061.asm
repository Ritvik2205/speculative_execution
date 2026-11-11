.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, ax
cmovl rsi, rbx
sub eax, 10
sub rdi, 12
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
setnz bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
test cx, ax
cmovns eax, ecx
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
btr rcx, 3
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
