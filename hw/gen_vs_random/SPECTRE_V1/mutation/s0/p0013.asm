.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add dl, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and dl, -109
cmovnb rdi, rcx
test al, 48
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, bl
cmovnp cx, ax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
cmovnle si, dx
not rsi
btc bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
