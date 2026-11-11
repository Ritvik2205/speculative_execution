.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
test al, 48
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and dl, -109
cmovnb rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
mul dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
cmovb dx, di
or ax, 18658
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
