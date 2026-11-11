.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 43
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xor bl, dl
btr dx, 11
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
not al
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
xor dil, 2
xor al, dil
cmp cl, al
setb dl
lea rdx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
