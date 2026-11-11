.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
lea ecx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 37
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, -120
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 18
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
sbb rax, -148104813
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
cwd
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
