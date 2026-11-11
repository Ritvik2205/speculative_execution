.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
bts cx, 176
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add cl, 97 # instrumentation
cmovnbe ecx, ebx
setle sil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
jmp .bb_0.1
.bb_0.1:
add al, bl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
test rdx, 60
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
sub cl, 86
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
