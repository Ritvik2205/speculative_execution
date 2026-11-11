.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
add bl, 107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
bt di, 157
add cl, sil
mul cx
add ecx, 38
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
bt edx, ebx
cmp cx, 19
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 66
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
