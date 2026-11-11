.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
test bl, 19
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 2
xor al, 86
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
mov ax, si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
lea dx, qword ptr [rdi + rdx]
setno dl
cmp al, dl
lea rcx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
