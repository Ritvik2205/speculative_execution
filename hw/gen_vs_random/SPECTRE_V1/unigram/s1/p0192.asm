.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl al
or rbx, rcx
cmovnbe rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
xchg dl, cl
add bl, 97 # instrumentation
cmovnb bx, dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
add cl, -104 # instrumentation
lea rcx, qword ptr [rax + rdi + 45]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
adc eax, eax
adc al, al
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
mov rax, 6
movsx rcx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
