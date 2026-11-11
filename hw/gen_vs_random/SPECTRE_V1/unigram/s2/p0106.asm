.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, 8
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 25
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
add al, 127 # instrumentation
sets sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnl sil
add bl, 40 # instrumentation
lea bx, qword ptr [rsi + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
add bl, 26 # instrumentation
sbb sil, cl
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
setno al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 52
and ax, -21522
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
