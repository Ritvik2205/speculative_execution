.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
xchg bl, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and bl, al
add bl, 21 # instrumentation
adc bx, 14
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmp cx, bx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
btr cx, bx
test dil, -116
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
lea edi, qword ptr [rbx]
seto al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
