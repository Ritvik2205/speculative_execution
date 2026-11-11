.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, esi
add dil, -109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 56
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
cmovns cx, dx
cmp cl, cl
and dil, -82
bt ax, 205
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
sbb ax, -14164
adc dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
