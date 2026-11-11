.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 26 # instrumentation
sbb cl, al
xor cl, 114
lea rsi, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
setb sil
add cl, -29 # instrumentation
lea rdi, qword ptr [rbx + rbx + 80]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
add al, 98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 64
test esi, eax
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
setbe al
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
sbb rsi, 17
btr rax, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
